package main

import "../html"
import "core:fmt"

main :: proc() {
	is_world := true

	doc := html.doc()
	defer {
		fmt.print(html.to_string(&doc))
		html.destroy(&doc)
	}

	if html.html(&doc, html.Attrs{{"lang", "en"}}) {
		if html.head(&doc) {
			html.meta(&doc, html.Attrs{{"charset", "UTF-8"}})
			html.meta(
				&doc,
				html.Attrs {
					{"name", "viewport"},
					{"content", "width=device-width, initial-scale=1.0"},
				},
			)
			if html.title(&doc) do html.text(&doc, "hello, <world>!")
		}

		if html.body(&doc) {
			if html.ul(&doc) {
				for i in 0 ..< 3 do if html.li(&doc) do html.text(&doc, "item")
			}

			html.span(&doc, proc(doc: ^html.Doc, ud: rawptr) {
					is_world := (^bool)(ud)

					html.attr(doc, "name", "soreto")
					html.attr(doc, "age", "30")

					if html.attribute(doc, "class") {
						html.value(doc, "hello")
						if is_world^ do html.value(doc, "world")
					}
				}, &is_world)

			if card(&doc, "Title") {
				if html.span(&doc) do html.text(&doc, "hello from card")
			}

			comp(&doc, "Component", nil, proc(doc: ^html.Doc, ud: rawptr) {
				html.text(doc, "hello from component")
			})
		}
	}
}

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

comp :: proc(doc: ^html.Doc, title: string, ud: rawptr, fn: proc(doc: ^html.Doc, ud: rawptr)) {
	html.div(doc)
	if html.h1(doc) do html.text(doc, title)
	if html.div(doc, html.Attrs{{"id", "container"}}) do fn(doc, ud)
}

