# Html For Nim

Be expressive, different from Karax implementation this one doesn't force you to
abide by a correct html definition. You can create custom tags and attributes as
you wish.

### Doc

- Anything inside parenthesis is evaluated as Element.
- Tuples with 2 items, being both strings is evaluated as Attribute.
- Invalid ident is evaluated to an empty attribute
  `el("option", selected) == <option selected>`

### Examples

```nim
import html
import std/streams

template hello(name: string): Element = span("hello " & name)

let htmlDoc = html(lang="en"):
  head:
    meta(charset="UTF-8")
    meta(name="viewport", content="width=device-width, initial-scale=1.0")
    title("Hello World!")
  body:
    span("hello"):
      for i in 0..3:
        span("worl", b("d"), if i mod 2 == 0: ("class", "visible"), hello("paulo"))


var buff = newStringOfCap(2048)
var stream = newStringStream(buff)
stream.write(htmlDoc, false)
stream.flush()
stream.setPosition(0)

echo stream.readAll()
```

```nim
import html
import std/[streams]

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


var buff = newStringOfCap(2048)
var stream = newStringStream(buff)
stream.write(doc, true)
stream.flush()
stream.setPosition(0)

echo stream.readAll()
```
