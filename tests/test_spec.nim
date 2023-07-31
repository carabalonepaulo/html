import ../src/html
import unittest
import std/strutils

test "attributes":
  var elem = el("div", a="10", b="20"):
    c="30"

  check elem.attrs.len == 3
  check elem.attrs[0] == ("a", "10")

test "custom attributes":
  var elem = el("div", ("a", "10")):
    ("b", "20")

  check elem.attrs.len == 2
  check elem.attrs[0] == ("a", "10")

test "custom attribute with numeric literal value":
  var elem = el("div", ("a", 10))

  check elem.attrs.len == 1
  check elem.attrs[0].key == "a"
  check elem.attrs[0].value == "10"

test "custom attribute with float literal value":
  var elem = el("div", ("b", 20.0))

  check elem.attrs.len == 1
  check elem.attrs[0].key == "b"
  check elem.attrs[0].value == "20.0"

test "custom attribute with float literal value":
  var elem = el("div", ("c", "3" & "0"))

  check elem.attrs.len == 1
  check elem.attrs[0].key == "c"
  check elem.attrs[0].value == "30"

test "custom attribute with expr value":
  var elem = el("div", ("d", "50".replace("5", "4")))

  check elem.attrs.len == 1
  check elem.attrs[0].key == "d"
  check elem.attrs[0].value == "40"

test "custom attributes with anything as value":
  var elem = el("div"):
    ("a", 10)
    ("b", 20.0)
    ("c", "3" & "0")
    ("d", "50".replace("5", "4"))

  check elem.attrs.len == 4
  check elem.attrs[0] == ("a", "10")
  check elem.attrs[1] == ("b", "20.0")
  check elem.attrs[2] == ("c", "30")
  check elem.attrs[3] == ("d", "40")

test "push literal string":
  var elem = el("div", "foo")

  check elem.children.len == 1
  check elem.children[0].text == "foo"

test "push ident":
  var first = el("div", pos="0")
  var second = el("div", pos="1", first)

  check second.children.len == 1
  check second.children[0].attrs[0] == ("pos", "0")

test "push literal number":
  var elem = el("div", 10, 20.0)

  check elem.children.len == 2
  check elem.children[0].text == "10"
  check elem.children[1].text == "20.0"

test "push infix":
  var elem = el("div", "hello " & "world!")

  check elem.children.len == 1
  check elem.children[0].text == "hello world!"

test "for stmt":
  var elem = li:
    for i in 0..<3:
      ul "text #" & $i

  check elem.children.len == 3
  check elem.children[0].children[0].text == "text #0"

test "if stmt":
  var trigger = true
  var elem = el("div"):
    if trigger:
      "foo"
    else:
      "bar"

  check elem.children.len == 1
  check elem.children[0] == "foo"

test "no value attribute":
  var elem = el("option", selected)

  check elem.attrs.len == 1
  check elem.attrs[0] == ("selected", "")

test "compatibility":
  type
    Item = object
      id: int
      name: string

  let items = @[Item(id: 0, name: "Item A")]

  let itemsComponent = el("div", class = "row mt-4"):
    el "div", class = "col d-flex flex-column":
      h5: "Items"
      el "ul", class = "list-group border rounded":
        for item in items:
          el "li", class = "list-group-item d-flex justify-content-between":
            a ("href", "/novel/" & $item.id), item.name
            el "div":
              class = "d-flex flex-row align-items-center justify-content-between"
              style = "width: 50px"
              button "edit"

  let doc = html(lang="en"):
    head:
      link:
        href = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
        rel = "stylesheet"
        crossorigin = "anonymous"
      link:
        rel = "stylesheet"
        href = "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"
      title "title name"
    body ("data-bs-theme", "dark"):
      el "div", class = "container", itemsComponent
      script:
        src = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        crossorigin = "anonymous"
      script src = "https://unpkg.com/htmx.org@1.9.4"