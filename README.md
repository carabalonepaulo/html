# html

Simple dsl to generate html documents using plain odin.

### Attributes

There are two ways to define attributes:
```odin
html.html(&doc, html.Attrs{{"lang", "en"}}) // <html lang="en"></html>
```
```odin
html.span(&doc, proc(doc: ^html.Doc, ud: rawptr) {
	ok := (^bool)(ud)

	html.attr(doc, "foo", "bar")
	if ok^ do html.attr(doc, "bar", "foo")

	if html.attribute(doc, "class") {
		html.value(doc, "hello")
		if ok^ do html.value(doc, "world")
	}
}, &ok)
// <span foo="bar" bar="foo" class="hello world"></span>
// <span foo="bar" class="hello"></span>
```

Using a proc to define attributes has some benefits: you can write optional attributes and compose an attribute value dynamically, which is usefull for conditional classes.

### Custom Components

```odin
begin_card :: proc(doc: ^html.Doc) {
	html.begin_div(doc)
}

end_card :: proc(doc: ^html.Doc, title: string) {
	html.end_div(doc)
}

@(deferred_in = end_card)
card :: proc(doc: ^html.Doc, title: string) -> bool {
	begin_card(doc)
	return true
}
```

```odin
if card(&doc, "Title") {
	if html.span(&doc) do html.text(&doc, "hello from card")
}
```
