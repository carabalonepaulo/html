import std/strutils

const textEscapeList = [("<", "&lt;"), (">", "&gt;"), ("&", "&amp;")]
const attributeEscapeList = [("\"", "&quot;"), ("'", "&apos;")]

proc escape_text*(text: string): string =
  result = multiReplace(text, textEscapeList)

proc escape_attribute*(text: string): string =
  result = multiReplace(text, attributeEscapeList)
