package html

import "base:runtime"
import "core:bytes"
import "core:strings"

INITIAL_CAPACITY :: #config(HTML_BUFFER_INITIAL_CAPACITY, 256)

Escape :: struct {
	char:    byte,
	escaped: string,
}

ESCAPE_TEXT :: []Escape {
	{'<', "&lt;"},
	{'>', "&gt;"},
	{'&', "&amp;"},
	{'"', "&quot;"},
	{'\'', "&#39;"},
}
ESCAPE_ATTR :: []Escape{{'&', "&amp;"}, {'"', "&quot;"}, {'\'', "&#39;"}}

Doc :: struct {
	sb:             strings.Builder,
	attr_has_value: bool,
}

Attributes :: union {
	[][2]string,
	proc(doc: ^Doc, ud: rawptr),
}

Attrs :: [][2]string

begin_doc :: proc() -> (doc: Doc) {
	strings.builder_init(&doc.sb, INITIAL_CAPACITY, allocator = runtime.default_allocator())
	strings.write_string(&doc.sb, "<!DOCTYPE html>")
	return
}

end_doc :: proc(doc: Doc) {}

@(deferred_out = end_doc)
doc :: proc() -> Doc {
	return begin_doc()
}

to_string :: proc(doc: ^Doc) -> string {
	return strings.to_string(doc.sb)
}

destroy :: proc(doc: ^Doc) {
	strings.builder_destroy(&doc.sb)
	doc^ = {}
}

begin_el :: proc(
	doc: ^Doc,
	tag: string,
	attrs: Attributes = nil,
	ud: rawptr = nil,
	close := false,
) {
	strings.write_string(&doc.sb, "<")
	strings.write_string(&doc.sb, tag)

	switch a in attrs {
	case [][2]string:
		if len(a) > 0 {
			for pair, i in a {
				attr(doc, pair[0], pair[1])
			}
		}
	case #type proc(doc: ^Doc, ud: rawptr):
		a(doc, ud)
	}

	if close do strings.write_byte(&doc.sb, '/')
	strings.write_string(&doc.sb, ">")
}

end_el :: proc(doc: ^Doc, tag: string, attrs: Attributes = nil, ud: rawptr = nil) {
	strings.write_string(&doc.sb, "</")
	strings.write_string(&doc.sb, tag)
	strings.write_string(&doc.sb, ">")
}

@(deferred_in = end_el)
el :: proc(doc: ^Doc, tag: string, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_el(doc, tag, attrs, ud)
	return true
}

text :: proc(doc: ^Doc, text: string) {
	write_text(doc, text, ESCAPE_TEXT)
}

attr :: proc(doc: ^Doc, name, value: string) {
	begin_attr(doc, name)
	write_text(doc, value, ESCAPE_ATTR)
	end_attr(doc, name)
}

@(private = "file")
begin_attr :: proc(doc: ^Doc, name: string) {
	strings.write_byte(&doc.sb, ' ')
	strings.write_string(&doc.sb, name)
	strings.write_string(&doc.sb, "=\"")
	doc.attr_has_value = false
}

@(private = "file")
end_attr :: proc(doc: ^Doc, name: string) {
	strings.write_byte(&doc.sb, '\"')
}

@(deferred_in = end_attr)
attribute :: proc(doc: ^Doc, name: string) -> bool {
	begin_attr(doc, name)
	return true
}

value :: proc(doc: ^Doc, value: string) {
	if len(value) == 0 do return
	if doc.attr_has_value do strings.write_byte(&doc.sb, ' ')
	write_text(doc, value, ESCAPE_ATTR)
	doc.attr_has_value = true
}

@(private = "file")
write_text :: proc(doc: ^Doc, text: string, escape: []Escape) {
	buf := transmute([]u8)(text)
	start := 0

	for i := 0; i < len(buf); {
		min_idx := -1
		esc_found: string

		for esc in escape {
			idx := bytes.index_byte(buf[i:], esc.char)
			if idx != -1 {
				abs_idx := i + idx
				if min_idx == -1 || abs_idx < min_idx {
					min_idx = abs_idx
					esc_found = esc.escaped
				}
			}
		}

		if min_idx == -1 do break
		if min_idx > start do strings.write_string(&doc.sb, transmute(string)(buf[start:min_idx]))
		strings.write_string(&doc.sb, esc_found)

		i = min_idx + 1
		start = i
	}

	if start < len(buf) do strings.write_string(&doc.sb, transmute(string)(buf[start:]))
}

