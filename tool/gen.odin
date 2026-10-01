package html_gen

import "core:os"
import "core:strings"

TEMPLATE :: #load("template.txt")
VOID_TEMPLATE :: #load("void_template.txt")

main :: proc() {
	file, open_err := os.open("./html/gen.odin", {.Create, .Trunc, .Write})
	assert(open_err == nil, "failed to open gen.odin")
	defer os.close(file)

	template := transmute(string)(TEMPLATE)
	void_template := transmute(string)(VOID_TEMPLATE)

	os.write_string(file, "package html\n\n")
	os.write_string(file, "// Code generated using: odin run tool\n\n")

	for void_tag in VOID_TAGS {
		value, alloc := strings.replace_all(void_template, "{{tag}}", void_tag)
		defer if alloc do delete(value)
		os.write_string(file, value)
		os.write_byte(file, '\n')
	}

	for tag in TAGS {
		value, alloc := strings.replace_all(template, "{{tag}}", tag)
		defer if alloc do delete(value)
		os.write_string(file, value)
		os.write_byte(file, '\n')
	}
}

