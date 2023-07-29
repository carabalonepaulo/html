import std/[macros, options, strutils, streams, typetraits]


const DefaultBufferSize = 2048


type
  Attribute* = tuple[key: string, value: string]

  ElementKind* = enum
    ekText
    ekElement

  Element* = object
    case kind*: ElementKind
    of ElementKind.ekElement:
      tag*: string
      attrs*: seq[Attribute]
      children*: seq[Element]
    of ElementKind.ekText:
      text*: string
  
  Doc* = distinct Element


proc initElement*(tag: string): Element =
  result = Element(kind: ElementKind.ekElement, tag: tag, attrs: @[], children: @[])


proc initText*(value: string): Element =
  result = Element(kind: ElementKind.ekText, text: value)


proc write*(stream: Stream, self: Element, pretty = false, tabSize = 4, currentIdent = 0) =
  case self.kind:
  of ElementKind.ekText:
    stream.write(self.text)
  of ElementKind.ekElement:
    let padding = if pretty: ' '.repeat(tabSize * currentIdent) else: ""
    let textOnly = (self.children.len == 1 and self.children[0].kind == ekText)

    if pretty:
      stream.write(padding)
    stream.write '<'
    stream.write(self.tag)
    if self.attrs.len > 0:
      stream.write ' '
    for i in 0..<self.attrs.len:
      if i > 0:
        stream.write ' '
      stream.write self.attrs[i].key
      stream.write '='
      stream.write '"'
      stream.write self.attrs[i].value
      stream.write '"'
    stream.write '>'
    
    if self.tag == "meta" or self.tag == "link":
      if pretty:
        stream.write '\n'
      return

    if self.children.len > 0 and not textOnly and pretty:
      stream.write('\n')
    if textOnly:
      stream.write(self.children[0].text)
    else:
      for child in self.children:
        if child.kind == ekText:
          if pretty:
            stream.write(' '.repeat(tabSize * (currentIdent + 1)))
          stream.write(child.text)
          if pretty:
            stream.write '\n'
        else:
          stream.write(child, pretty, tabSize, currentIdent + 1)

    if self.children.len > 0 and not textOnly:
      stream.write(padding)
    stream.write("</" & self.tag & ">")
    if pretty:
      stream.write '\n'


proc write*(stream: Stream, self: Doc, pretty = false) =
  stream.write("<!doctype html>")
  let asNode = cast[Element](self)
  if asNode.children.len > 0:
    stream.write '\n'
  stream.write(asNode, pretty)


converter toString*(el: Element): string =
  var buff = newStringOfCap(DefaultBufferSize)
  var stream = newStringStream(buff)
  stream.write(el, false)
  stream.flush()
  stream.setPosition(0)
  result = stream.readAll()


converter toString*(doc: Doc): string =
  var buff = newStringOfCap(DefaultBufferSize)
  var stream = newStringStream(buff)
  stream.write(doc, false)
  stream.flush()
  stream.setPosition(0)
  result = stream.readAll()


template text*(value: untyped): Element =
  initText(value)

template selected*(): untyped {.dirty.} =
  node.attrs.add(("selected", ""))

template attr*(key: string, value: string): untyped {.dirty.} =
  node.attrs.add((key, value))


macro el*(tag: string, args: varargs[untyped]): Element =
  var rootStmtList = nnkStmtList.newTree(nnkVarSection.newTree(
    nnkIdentDefs.newTree(
      newIdentNode("node"),
      nnkEmpty.newNimNode(),
      newCall("initElement", newStrLitNode(tag.strVal))
    )
  ))

  template newAddCall(kind: string, arg: NimNode): NimNode =
    nnkCall.newTree(
      newDotExpr(newDotExpr(newIdentNode("node"), newIdentNode(kind)), newIdentNode("add")),
      arg
    )

  template wrap(node: NimNode): NimNode =
    if node.kind == nnkStmtList:
      var stmts = nnkStmtList.newTree()
      for innerNode in node.children:
          handleAnyNode(stmts, innerNode)
      stmts
    else:
      node

  proc handleAnyNode(tree: var NimNode, node: NimNode) =
    case node.kind:
    of nnkCall, nnkStmtListExpr, nnkBlockExpr:
      tree.add(newAddCall("children", node))
    of nnkForStmt:
      var forStmt = nnkForStmt.newTree()
      for i in 0..(node.len - 2):
        forStmt.add(node[i])
      forStmt.add(wrap(node.last))
      tree.add(forStmt)
    of nnkStmtList:
      for child in node.children:
        handleAnyNode(tree, child)
    of nnkAsgn, nnkExprEqExpr:
      tree.add(newAddCall("attrs", nnkTupleConstr.newTree(newStrLitNode(node[0].strVal), newStrLitNode(node[1].strVal))))
    of nnkTupleConstr:
      assert node.len == 2, "Invalid custom attribute constructor."
      tree.add(newAddCall("attrs", node))
    of nnkIfStmt, nnkIfExpr:
      var newNode = node.kind.newTree()
      for branch in node.children:
        if branch.kind == nnkElse:
          newNode.add(nnkElse.newTree(wrap(branch[0])))
        else:
          newNode.add(branch.kind.newTree(branch[0], wrap(branch[1])))
      tree.add(newNode)
    of nnkIdent:
      tree.add(quote do:
        block:
          var n = `node`
          when compiles(n):
            node.children.add(n)
          else:
            node.attrs.add(($n, "")))
    of nnkCommand:
      var newNode = nnkCall.newTree()
      copyChildrenTo(node, newNode)
      tree.add(newAddCall("children", newNode))
    of nnkStrLit, nnkRStrLit, nnkTripleStrLit, nnkInfix:
        tree.add(newAddCall("children", newCall("initText", node)))
    of nnkIntLit, nnkUIntLit, nnkInt8Lit, nnkUInt8Lit,
        nnkInt16Lit, nnkUInt16Lit, nnkInt32Lit, nnkUInt32Lit,
        nnkInt64Lit, nnkUInt64Lit:
      tree.add(newAddCall("children", newCall("initText", newCall("$", node))))
    else:
      if ($node.kind).endsWith("Expr"):
        tree.add(quote do:
          block addThing:
            let n = `node`
            when n is (string, string):
              node.attrs.add(`node`)
            when n is Element:
              node.children.add(n)
            when (n is string) or ((n is not Element) and (n is not (string, string)) and compiles($n)):
              node.children.add(initText(n)))
      else:
        echo treeRepr node
        echo "Unhandled node: " & $node.kind

  for node in args.children:
    handleAnyNode(rootStmtList, node)

  rootStmtList.add(newIdentNode("node"))
  result = newBlockStmt(rootStmtList)


template html*(args: varargs[untyped]): Doc =
  Doc(el("html", args))


macro createTagMacros(): untyped =
  let tags = @[
    "head", "title", "base", "link", "meta", "style",
    "script", "noscript",
    "body", "section", "nav", "article", "aside",
    "h1", "h2", "h3", "h4", "h5", "h6", "hgroup",
    "header", "footer", "address", "main",

    "p", "hr", "pre", "blockquote", "ol", "ul", "li",
    "dl", "dt", "dd",
    "figure", "figcaption",

    "a", "em", "strong", "small",
    "cite", "quote",
    "dfn", "abbr", "data", "time", "code", "samp",
    "kbd", "sub", "sup", "i", "b", "u",
    "mark", "ruby", "rt", "rp", "bdi", "dbo", "span", "br", "wbr",
    "ins", "del", "img", "iframe", "embed",
    "param", "video", "audio", "source", "track", "canvas", "map", "area",

    "maction", "math", "menclose", "merror", "mfenced", "mfrac", "mglyph", "mi", "mlabeledtr",
    "mmultiscripts", "mn", "mo", "mover", "mpadded", "mphantom", "mroot", "mrow", "ms", "mspace",
    "msqrt", "mstyle", "msub", "msubsup", "msup", "mtable", "mtd", "mtext", "mtr", "munder",
    "munderover", "semantics",

    "table", "caption", "colgroup", "col", "tbody", "thead",
    "tfoot", "tr", "td", "th",

    "form", "fieldset", "legend", "label", "input", "button",
    "select", "datalist", "optgroup", "option", "textarea",
    "keygen", "output", "progress", "meter",
    "details", "summary", "command", "menu",

    "bdo", "dialog", "slot"
  ]

  result = nnkStmtList.newTree()
  for tag in tags:
    let ident = newIdentNode(tag)
    result.add(quote do:
      template `ident`*(args: varargs[untyped]): Element =
        el(`tag`, args)
    )

createTagMacros()