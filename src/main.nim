import std/[macros, options, strutils]


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


proc toHtml*(self: Node, tabSize = 4, currentIdent = 0): string =
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
          result.add(child.toHtml(tabSize, currentIdent + 1))

    if self.children.len > 0 and not textOnly:
      result.add(padding)
    result.add("</" & self.tag & ">\n")


proc toHtml*(self: Doc): string =
  result.add("<!doctype html>")
  let asNode = cast[Node](self)
  if asNode.children.len > 0:
    result.add '\n'
  result.add(asNode.toHtml())


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
    of nnkCall:
      tree.add(newAddCall("children", node))
    of nnkForStmt:
      var forStmt = nnkForStmt.newTree()
      for i in 0..(node.len - 2):
        forStmt.add(node[i])
      forStmt.add(wrap(node.last))
      tree.add(forStmt)
    of nnkStrLit:
      tree.add(newAddCall("children", newCall("initText", node)))
    of nnkStmtList:
      for child in node.children:
        handleAnyNode(tree, child)
    of nnkExprEqExpr:
      tree.add(newAddCall("attrs", nnkTupleConstr.newTree(newStrLitNode(node[0].strVal), newStrLitNode(node[1].strVal))))
    of nnkAsgn:
      tree.add(newAddCall("attrs", nnkTupleConstr.newTree(newStrLitNode(node[0].strVal), newStrLitNode(node[1].strVal))))
    of nnkInfix:
      tree.add(newAddCall("children", newCall("initText", node)))
    of nnkIfStmt:
      var newIfStmt = nnkIfStmt.newTree()
      for branch in node.children:
        case branch.kind:
        of nnkElifBranch:
          newIfStmt.add(branch.kind.newTree(branch[0], wrap(branch[1])))
        of nnkElse:
          newIfStmt.add(nnkElse.newTree(wrap(branch[0])))
        else: error("Only nnkElifBranch and nnkElse allowed.")
      tree.add(newIfStmt)
    of nnkTupleConstr:
      assert node.len == 2, "Invalid custom attribute constructor."
      tree.add(newAddCall("attrs", node))
    of nnkStmtListExpr:
      tree.add(newAddCall("children", node))
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


let htmlDoc = doc:
  head:
    a(href="https://google.com")
  body:
    span("hello"):
      span("world")

echo htmlDoc.toHtml()


# proc hello(name: string): Node =
#   el("span", "hello " & name)

# let node = el("div", class = "hello world", "text value"):
#   for i in 0..<3:
#     el("div", "hello")
#     if true:
#       el("a", href = "hello"):
#         ("attr-a", "value-a")
#     else:
#       el("b", ("hx-swap", "innerHTML"), "text inside node")
#     hello("paulo")

# let html = node.toHtml()
# echo sizeof(html)
# echo html.len

# echo node.tag
# echo node.attrs.len
# echo node.children.len


# discard el:
#   head:
#     meta(charset="UTF-8")
#     meta(name="viewport", content="width=device-width, initial-scale=1.0")
#     title("Hello World!")

#   body(class="hello world"):
#     ""
#     el(attr-a="", firstEl(), attr-b=""):
#       secondEl()
#       el:
#         for i in 1...5:
#           span("wtf?", @i)