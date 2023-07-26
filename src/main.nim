import std/[macros, options, strutils, streams]


type
  Attribute* = tuple[key: string, value: string]

  NodeKind* = enum
    ekText
    ekElement

  Node* = object
    case kind: NodeKind
    of NodeKind.ekElement:
      tag: string
      attrs: seq[Attribute]
      children: seq[Node]
    of NodeKind.ekText:
      text: string
  
  Doc* = distinct Node


proc initElement*(tag: string): Node =
  result = Node(kind: NodeKind.ekElement, tag: tag, attrs: @[], children: @[])


proc initText*(value: string): Node =
  result = Node(kind: NodeKind.ekText, text: value)


proc write(stream: Stream, self: Node, tabSize = 4, currentIdent = 0) =
  case self.kind:
  of NodeKind.ekText:
    stream.write(self.text)
  of NodeKind.ekElement:
    let padding = ' '.repeat(tabSize * currentIdent)
    let textOnly = (self.children.len == 1 and self.children[0].kind == ekText)

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

    if self.children.len > 0 and not textOnly:
      stream.write('\n')
    if textOnly:
      stream.write(self.children[0].text)
    else:
      for child in self.children:
        if child.kind == ekText:
          stream.write(' '.repeat(tabSize * (currentIdent + 1)))
          stream.write(child.text)
          stream.write '\n'
        else:
          stream.write(child, tabSize, currentIdent + 1)

    if self.children.len > 0 and not textOnly:
      stream.write(padding)
    stream.write("</" & self.tag & ">\n")


proc toPrettyHtml*(self: Node, tabSize = 4, currentIdent = 0): string =
  case self.kind:
  of NodeKind.ekText:
    result = self.text
  of NodeKind.ekElement:
    let padding = ' '.repeat(tabSize * currentIdent)
    let textOnly = (self.children.len == 1 and self.children[0].kind == ekText)

    result.add(padding)
    result.add '<'
    result.add(self.tag)
    if self.attrs.len > 0:
      result.add ' '
    for i in 0..<self.attrs.len:
      if i > 0:
        result.add ' '
      result.add self.attrs[i].key
      result.add '='
      result.add '"'
      result.add self.attrs[i].value
      result.add '"'
    result.add '>'

    if self.children.len > 0 and not textOnly:
      result.add('\n')
    if textOnly:
      result.add(self.children[0].text)
    else:
      for child in self.children:
        if child.kind == ekText:
          result.add(' '.repeat(tabSize * (currentIdent + 1)))
          result.add(child.text)
          result.add '\n'
        else:
          result.add(child.toPrettyHtml(tabSize, currentIdent + 1))

    if self.children.len > 0 and not textOnly:
      result.add(padding)
    result.add("</" & self.tag & ">\n")


proc write*(stream: Stream, self: Doc) =
  stream.write("<!doctype html>")
  let asNode = cast[Node](self)
  if asNode.children.len > 0:
    stream.write '\n'
  # asNode.writeTo(stream)
  stream.write(asNode)


proc toPrettyHtml*(self: Doc): string =
  result.add("<!doctype html>")
  let asNode = cast[Node](self)
  if asNode.children.len > 0:
    result.add '\n'
  result.add(asNode.toPrettyHtml())


#
# <!DOCTYPE html>
# <html lang="en">
# <head>
#     <meta charset="UTF-8">
#     <meta name="viewport" content="width=device-width, initial-scale=1.0">
#     <title>Document</title>
# </head>
# <body>
#
# </body>
# </html>
#
# var firstEl: proc(): Element
# var secondEl: proc(): Element
# html:
#   head:
#     meta(charset="UTF-8")
#     meta(name="viewport" content="width=device-width, initial-scale=1.0")
#   body:
#     el(attr-a="", firstEl(), attr-b=""):
#       secondEl()
#       el:
#         for i in 1...5:
#           span("wtf?", @i)
#
# TODO: it's possible to infer the initial size of the children and attrs seq.
macro el(tag: string, args: varargs[untyped]): Node =
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
    of nnkCall, nnkStmtListExpr:
      tree.add(newAddCall("children", node))
    of nnkForStmt:
      var forStmt = nnkForStmt.newTree()
      for i in 0..(node.len - 2):
        forStmt.add(node[i])
      forStmt.add(wrap(node.last))
      tree.add(forStmt)
    of nnkStrLit, nnkInfix:
      tree.add(newAddCall("children", newCall("initText", node)))
    of nnkStmtList:
      for child in node.children:
        handleAnyNode(tree, child)
    of nnkExprEqExpr, nnkAsgn:
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
    else:
      echo node.kind

  for node in args.children:
    handleAnyNode(rootStmtList, node)

  rootStmtList.add(newIdentNode("node"))
  result = newBlockStmt(rootStmtList)


template doc*(args: varargs[untyped]): Doc =
  Doc(el("html", args))


macro createDefaultMacros(): untyped =
  let tags = @[
    "html", "head", "title", "base", "link", "meta", "style",
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
      template `ident`*(args: varargs[untyped]): Node =
        el(`tag`, args)
    )

createDefaultMacros()

template hello(name: string): Node = span("hello " & name)

let htmlDoc = doc:
  head:
    meta(charset="UTF-8")
    meta(name="viewport", content="width=device-width, initial-scale=1.0")
    title("Hello World!")
    a(href="https://google.com")
  body:
    span("hello"):
      for i in 0..3:
        span("worl", b("d"), if i mod 2 == 0: ("attr", "value"), hello("paulo"))

echo htmlDoc.toPrettyHtml()
var buff = newStringOfCap(1024)
var stream = newStringStream(buff)
stream.write(htmlDoc)
stream.flush()

echo stream.readAll()
