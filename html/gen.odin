package html

// Code generated using: odin run tool

area :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "area", attrs, close = true)
}

base :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "base", attrs, close = true)
}

br :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "br", attrs, close = true)
}

col :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "col", attrs, close = true)
}

embed :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "embed", attrs, close = true)
}

hr :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "hr", attrs, close = true)
}

img :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "img", attrs, close = true)
}

input :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "input", attrs, close = true)
}

link :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "link", attrs, close = true)
}

meta :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "meta", attrs, close = true)
}

param :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "param", attrs, close = true)
}

source :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "source", attrs, close = true)
}

track :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "track", attrs, close = true)
}

wbr :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "wbr", attrs, close = true)
}

begin_html :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "html", attrs, ud, false)
}

end_html :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "html", attrs, ud)
}

@(deferred_in = end_html)
html :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_html(doc, attrs, ud)
	return true
}

begin_head :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "head", attrs, ud, false)
}

end_head :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "head", attrs, ud)
}

@(deferred_in = end_head)
head :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_head(doc, attrs, ud)
	return true
}

begin_title :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "title", attrs, ud, false)
}

end_title :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "title", attrs, ud)
}

@(deferred_in = end_title)
title :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_title(doc, attrs, ud)
	return true
}

begin_div :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "div", attrs, ud, false)
}

end_div :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "div", attrs, ud)
}

@(deferred_in = end_div)
div :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_div(doc, attrs, ud)
	return true
}

begin_style :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "style", attrs, ud, false)
}

end_style :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "style", attrs, ud)
}

@(deferred_in = end_style)
style :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_style(doc, attrs, ud)
	return true
}

begin_script :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "script", attrs, ud, false)
}

end_script :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "script", attrs, ud)
}

@(deferred_in = end_script)
script :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_script(doc, attrs, ud)
	return true
}

begin_noscript :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "noscript", attrs, ud, false)
}

end_noscript :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "noscript", attrs, ud)
}

@(deferred_in = end_noscript)
noscript :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_noscript(doc, attrs, ud)
	return true
}

begin_body :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "body", attrs, ud, false)
}

end_body :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "body", attrs, ud)
}

@(deferred_in = end_body)
body :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_body(doc, attrs, ud)
	return true
}

begin_section :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "section", attrs, ud, false)
}

end_section :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "section", attrs, ud)
}

@(deferred_in = end_section)
section :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_section(doc, attrs, ud)
	return true
}

begin_nav :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "nav", attrs, ud, false)
}

end_nav :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "nav", attrs, ud)
}

@(deferred_in = end_nav)
nav :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_nav(doc, attrs, ud)
	return true
}

begin_article :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "article", attrs, ud, false)
}

end_article :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "article", attrs, ud)
}

@(deferred_in = end_article)
article :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_article(doc, attrs, ud)
	return true
}

begin_aside :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "aside", attrs, ud, false)
}

end_aside :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "aside", attrs, ud)
}

@(deferred_in = end_aside)
aside :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_aside(doc, attrs, ud)
	return true
}

begin_h1 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "h1", attrs, ud, false)
}

end_h1 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "h1", attrs, ud)
}

@(deferred_in = end_h1)
h1 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_h1(doc, attrs, ud)
	return true
}

begin_h2 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "h2", attrs, ud, false)
}

end_h2 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "h2", attrs, ud)
}

@(deferred_in = end_h2)
h2 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_h2(doc, attrs, ud)
	return true
}

begin_h3 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "h3", attrs, ud, false)
}

end_h3 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "h3", attrs, ud)
}

@(deferred_in = end_h3)
h3 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_h3(doc, attrs, ud)
	return true
}

begin_h4 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "h4", attrs, ud, false)
}

end_h4 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "h4", attrs, ud)
}

@(deferred_in = end_h4)
h4 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_h4(doc, attrs, ud)
	return true
}

begin_h5 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "h5", attrs, ud, false)
}

end_h5 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "h5", attrs, ud)
}

@(deferred_in = end_h5)
h5 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_h5(doc, attrs, ud)
	return true
}

begin_h6 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "h6", attrs, ud, false)
}

end_h6 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "h6", attrs, ud)
}

@(deferred_in = end_h6)
h6 :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_h6(doc, attrs, ud)
	return true
}

begin_hgroup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "hgroup", attrs, ud, false)
}

end_hgroup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "hgroup", attrs, ud)
}

@(deferred_in = end_hgroup)
hgroup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_hgroup(doc, attrs, ud)
	return true
}

begin_header :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "header", attrs, ud, false)
}

end_header :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "header", attrs, ud)
}

@(deferred_in = end_header)
header :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_header(doc, attrs, ud)
	return true
}

begin_footer :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "footer", attrs, ud, false)
}

end_footer :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "footer", attrs, ud)
}

@(deferred_in = end_footer)
footer :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_footer(doc, attrs, ud)
	return true
}

begin_address :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "address", attrs, ud, false)
}

end_address :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "address", attrs, ud)
}

@(deferred_in = end_address)
address :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_address(doc, attrs, ud)
	return true
}

begin_p :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "p", attrs, ud, false)
}

end_p :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "p", attrs, ud)
}

@(deferred_in = end_p)
p :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_p(doc, attrs, ud)
	return true
}

begin_pre :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "pre", attrs, ud, false)
}

end_pre :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "pre", attrs, ud)
}

@(deferred_in = end_pre)
pre :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_pre(doc, attrs, ud)
	return true
}

begin_blockquote :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "blockquote", attrs, ud, false)
}

end_blockquote :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "blockquote", attrs, ud)
}

@(deferred_in = end_blockquote)
blockquote :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_blockquote(doc, attrs, ud)
	return true
}

begin_ol :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "ol", attrs, ud, false)
}

end_ol :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "ol", attrs, ud)
}

@(deferred_in = end_ol)
ol :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_ol(doc, attrs, ud)
	return true
}

begin_ul :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "ul", attrs, ud, false)
}

end_ul :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "ul", attrs, ud)
}

@(deferred_in = end_ul)
ul :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_ul(doc, attrs, ud)
	return true
}

begin_li :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "li", attrs, ud, false)
}

end_li :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "li", attrs, ud)
}

@(deferred_in = end_li)
li :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_li(doc, attrs, ud)
	return true
}

begin_dl :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "dl", attrs, ud, false)
}

end_dl :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "dl", attrs, ud)
}

@(deferred_in = end_dl)
dl :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_dl(doc, attrs, ud)
	return true
}

begin_dt :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "dt", attrs, ud, false)
}

end_dt :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "dt", attrs, ud)
}

@(deferred_in = end_dt)
dt :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_dt(doc, attrs, ud)
	return true
}

begin_dd :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "dd", attrs, ud, false)
}

end_dd :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "dd", attrs, ud)
}

@(deferred_in = end_dd)
dd :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_dd(doc, attrs, ud)
	return true
}

begin_figure :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "figure", attrs, ud, false)
}

end_figure :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "figure", attrs, ud)
}

@(deferred_in = end_figure)
figure :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_figure(doc, attrs, ud)
	return true
}

begin_figcaption :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "figcaption", attrs, ud, false)
}

end_figcaption :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "figcaption", attrs, ud)
}

@(deferred_in = end_figcaption)
figcaption :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_figcaption(doc, attrs, ud)
	return true
}

begin_a :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "a", attrs, ud, false)
}

end_a :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "a", attrs, ud)
}

@(deferred_in = end_a)
a :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_a(doc, attrs, ud)
	return true
}

begin_em :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "em", attrs, ud, false)
}

end_em :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "em", attrs, ud)
}

@(deferred_in = end_em)
em :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_em(doc, attrs, ud)
	return true
}

begin_strong :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "strong", attrs, ud, false)
}

end_strong :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "strong", attrs, ud)
}

@(deferred_in = end_strong)
strong :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_strong(doc, attrs, ud)
	return true
}

begin_small :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "small", attrs, ud, false)
}

end_small :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "small", attrs, ud)
}

@(deferred_in = end_small)
small :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_small(doc, attrs, ud)
	return true
}

begin_cite :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "cite", attrs, ud, false)
}

end_cite :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "cite", attrs, ud)
}

@(deferred_in = end_cite)
cite :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_cite(doc, attrs, ud)
	return true
}

begin_quote :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "quote", attrs, ud, false)
}

end_quote :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "quote", attrs, ud)
}

@(deferred_in = end_quote)
quote :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_quote(doc, attrs, ud)
	return true
}

begin_dfn :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "dfn", attrs, ud, false)
}

end_dfn :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "dfn", attrs, ud)
}

@(deferred_in = end_dfn)
dfn :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_dfn(doc, attrs, ud)
	return true
}

begin_abbr :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "abbr", attrs, ud, false)
}

end_abbr :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "abbr", attrs, ud)
}

@(deferred_in = end_abbr)
abbr :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_abbr(doc, attrs, ud)
	return true
}

begin_data :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "data", attrs, ud, false)
}

end_data :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "data", attrs, ud)
}

@(deferred_in = end_data)
data :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_data(doc, attrs, ud)
	return true
}

begin_time :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "time", attrs, ud, false)
}

end_time :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "time", attrs, ud)
}

@(deferred_in = end_time)
time :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_time(doc, attrs, ud)
	return true
}

begin_code :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "code", attrs, ud, false)
}

end_code :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "code", attrs, ud)
}

@(deferred_in = end_code)
code :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_code(doc, attrs, ud)
	return true
}

begin_samp :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "samp", attrs, ud, false)
}

end_samp :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "samp", attrs, ud)
}

@(deferred_in = end_samp)
samp :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_samp(doc, attrs, ud)
	return true
}

begin_kbd :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "kbd", attrs, ud, false)
}

end_kbd :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "kbd", attrs, ud)
}

@(deferred_in = end_kbd)
kbd :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_kbd(doc, attrs, ud)
	return true
}

begin_sub :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "sub", attrs, ud, false)
}

end_sub :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "sub", attrs, ud)
}

@(deferred_in = end_sub)
sub :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_sub(doc, attrs, ud)
	return true
}

begin_sup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "sup", attrs, ud, false)
}

end_sup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "sup", attrs, ud)
}

@(deferred_in = end_sup)
sup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_sup(doc, attrs, ud)
	return true
}

begin_i :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "i", attrs, ud, false)
}

end_i :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "i", attrs, ud)
}

@(deferred_in = end_i)
i :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_i(doc, attrs, ud)
	return true
}

begin_b :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "b", attrs, ud, false)
}

end_b :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "b", attrs, ud)
}

@(deferred_in = end_b)
b :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_b(doc, attrs, ud)
	return true
}

begin_u :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "u", attrs, ud, false)
}

end_u :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "u", attrs, ud)
}

@(deferred_in = end_u)
u :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_u(doc, attrs, ud)
	return true
}

begin_mark :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mark", attrs, ud, false)
}

end_mark :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mark", attrs, ud)
}

@(deferred_in = end_mark)
mark :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mark(doc, attrs, ud)
	return true
}

begin_ruby :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "ruby", attrs, ud, false)
}

end_ruby :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "ruby", attrs, ud)
}

@(deferred_in = end_ruby)
ruby :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_ruby(doc, attrs, ud)
	return true
}

begin_rt :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "rt", attrs, ud, false)
}

end_rt :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "rt", attrs, ud)
}

@(deferred_in = end_rt)
rt :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_rt(doc, attrs, ud)
	return true
}

begin_rp :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "rp", attrs, ud, false)
}

end_rp :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "rp", attrs, ud)
}

@(deferred_in = end_rp)
rp :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_rp(doc, attrs, ud)
	return true
}

begin_bdi :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "bdi", attrs, ud, false)
}

end_bdi :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "bdi", attrs, ud)
}

@(deferred_in = end_bdi)
bdi :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_bdi(doc, attrs, ud)
	return true
}

begin_dbo :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "dbo", attrs, ud, false)
}

end_dbo :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "dbo", attrs, ud)
}

@(deferred_in = end_dbo)
dbo :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_dbo(doc, attrs, ud)
	return true
}

begin_span :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "span", attrs, ud, false)
}

end_span :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "span", attrs, ud)
}

@(deferred_in = end_span)
span :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_span(doc, attrs, ud)
	return true
}

begin_ins :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "ins", attrs, ud, false)
}

end_ins :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "ins", attrs, ud)
}

@(deferred_in = end_ins)
ins :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_ins(doc, attrs, ud)
	return true
}

begin_del :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "del", attrs, ud, false)
}

end_del :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "del", attrs, ud)
}

@(deferred_in = end_del)
del :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_del(doc, attrs, ud)
	return true
}

begin_iframe :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "iframe", attrs, ud, false)
}

end_iframe :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "iframe", attrs, ud)
}

@(deferred_in = end_iframe)
iframe :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_iframe(doc, attrs, ud)
	return true
}

begin_video :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "video", attrs, ud, false)
}

end_video :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "video", attrs, ud)
}

@(deferred_in = end_video)
video :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_video(doc, attrs, ud)
	return true
}

begin_audio :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "audio", attrs, ud, false)
}

end_audio :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "audio", attrs, ud)
}

@(deferred_in = end_audio)
audio :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_audio(doc, attrs, ud)
	return true
}

begin_canvas :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "canvas", attrs, ud, false)
}

end_canvas :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "canvas", attrs, ud)
}

@(deferred_in = end_canvas)
canvas :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_canvas(doc, attrs, ud)
	return true
}

begin_maction :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "maction", attrs, ud, false)
}

end_maction :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "maction", attrs, ud)
}

@(deferred_in = end_maction)
maction :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_maction(doc, attrs, ud)
	return true
}

begin_math :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "math", attrs, ud, false)
}

end_math :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "math", attrs, ud)
}

@(deferred_in = end_math)
math :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_math(doc, attrs, ud)
	return true
}

begin_menclose :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "menclose", attrs, ud, false)
}

end_menclose :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "menclose", attrs, ud)
}

@(deferred_in = end_menclose)
menclose :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_menclose(doc, attrs, ud)
	return true
}

begin_merror :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "merror", attrs, ud, false)
}

end_merror :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "merror", attrs, ud)
}

@(deferred_in = end_merror)
merror :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_merror(doc, attrs, ud)
	return true
}

begin_mfenced :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mfenced", attrs, ud, false)
}

end_mfenced :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mfenced", attrs, ud)
}

@(deferred_in = end_mfenced)
mfenced :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mfenced(doc, attrs, ud)
	return true
}

begin_mfrac :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mfrac", attrs, ud, false)
}

end_mfrac :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mfrac", attrs, ud)
}

@(deferred_in = end_mfrac)
mfrac :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mfrac(doc, attrs, ud)
	return true
}

begin_mglyph :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mglyph", attrs, ud, false)
}

end_mglyph :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mglyph", attrs, ud)
}

@(deferred_in = end_mglyph)
mglyph :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mglyph(doc, attrs, ud)
	return true
}

begin_mi :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mi", attrs, ud, false)
}

end_mi :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mi", attrs, ud)
}

@(deferred_in = end_mi)
mi :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mi(doc, attrs, ud)
	return true
}

begin_mlabeledtr :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mlabeledtr", attrs, ud, false)
}

end_mlabeledtr :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mlabeledtr", attrs, ud)
}

@(deferred_in = end_mlabeledtr)
mlabeledtr :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mlabeledtr(doc, attrs, ud)
	return true
}

begin_mmultiscripts :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mmultiscripts", attrs, ud, false)
}

end_mmultiscripts :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mmultiscripts", attrs, ud)
}

@(deferred_in = end_mmultiscripts)
mmultiscripts :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mmultiscripts(doc, attrs, ud)
	return true
}

begin_mn :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mn", attrs, ud, false)
}

end_mn :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mn", attrs, ud)
}

@(deferred_in = end_mn)
mn :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mn(doc, attrs, ud)
	return true
}

begin_mo :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mo", attrs, ud, false)
}

end_mo :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mo", attrs, ud)
}

@(deferred_in = end_mo)
mo :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mo(doc, attrs, ud)
	return true
}

begin_mover :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mover", attrs, ud, false)
}

end_mover :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mover", attrs, ud)
}

@(deferred_in = end_mover)
mover :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mover(doc, attrs, ud)
	return true
}

begin_mpadded :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mpadded", attrs, ud, false)
}

end_mpadded :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mpadded", attrs, ud)
}

@(deferred_in = end_mpadded)
mpadded :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mpadded(doc, attrs, ud)
	return true
}

begin_mphantom :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mphantom", attrs, ud, false)
}

end_mphantom :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mphantom", attrs, ud)
}

@(deferred_in = end_mphantom)
mphantom :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mphantom(doc, attrs, ud)
	return true
}

begin_mroot :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mroot", attrs, ud, false)
}

end_mroot :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mroot", attrs, ud)
}

@(deferred_in = end_mroot)
mroot :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mroot(doc, attrs, ud)
	return true
}

begin_mrow :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mrow", attrs, ud, false)
}

end_mrow :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mrow", attrs, ud)
}

@(deferred_in = end_mrow)
mrow :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mrow(doc, attrs, ud)
	return true
}

begin_ms :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "ms", attrs, ud, false)
}

end_ms :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "ms", attrs, ud)
}

@(deferred_in = end_ms)
ms :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_ms(doc, attrs, ud)
	return true
}

begin_mspace :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mspace", attrs, ud, false)
}

end_mspace :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mspace", attrs, ud)
}

@(deferred_in = end_mspace)
mspace :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mspace(doc, attrs, ud)
	return true
}

begin_msqrt :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "msqrt", attrs, ud, false)
}

end_msqrt :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "msqrt", attrs, ud)
}

@(deferred_in = end_msqrt)
msqrt :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_msqrt(doc, attrs, ud)
	return true
}

begin_mstyle :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mstyle", attrs, ud, false)
}

end_mstyle :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mstyle", attrs, ud)
}

@(deferred_in = end_mstyle)
mstyle :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mstyle(doc, attrs, ud)
	return true
}

begin_msub :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "msub", attrs, ud, false)
}

end_msub :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "msub", attrs, ud)
}

@(deferred_in = end_msub)
msub :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_msub(doc, attrs, ud)
	return true
}

begin_msubsup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "msubsup", attrs, ud, false)
}

end_msubsup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "msubsup", attrs, ud)
}

@(deferred_in = end_msubsup)
msubsup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_msubsup(doc, attrs, ud)
	return true
}

begin_msup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "msup", attrs, ud, false)
}

end_msup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "msup", attrs, ud)
}

@(deferred_in = end_msup)
msup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_msup(doc, attrs, ud)
	return true
}

begin_mtable :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mtable", attrs, ud, false)
}

end_mtable :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mtable", attrs, ud)
}

@(deferred_in = end_mtable)
mtable :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mtable(doc, attrs, ud)
	return true
}

begin_mtd :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mtd", attrs, ud, false)
}

end_mtd :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mtd", attrs, ud)
}

@(deferred_in = end_mtd)
mtd :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mtd(doc, attrs, ud)
	return true
}

begin_mtext :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mtext", attrs, ud, false)
}

end_mtext :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mtext", attrs, ud)
}

@(deferred_in = end_mtext)
mtext :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mtext(doc, attrs, ud)
	return true
}

begin_mtr :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "mtr", attrs, ud, false)
}

end_mtr :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "mtr", attrs, ud)
}

@(deferred_in = end_mtr)
mtr :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_mtr(doc, attrs, ud)
	return true
}

begin_munder :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "munder", attrs, ud, false)
}

end_munder :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "munder", attrs, ud)
}

@(deferred_in = end_munder)
munder :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_munder(doc, attrs, ud)
	return true
}

begin_munderover :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "munderover", attrs, ud, false)
}

end_munderover :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "munderover", attrs, ud)
}

@(deferred_in = end_munderover)
munderover :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_munderover(doc, attrs, ud)
	return true
}

begin_semantics :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "semantics", attrs, ud, false)
}

end_semantics :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "semantics", attrs, ud)
}

@(deferred_in = end_semantics)
semantics :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_semantics(doc, attrs, ud)
	return true
}

begin_table :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "table", attrs, ud, false)
}

end_table :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "table", attrs, ud)
}

@(deferred_in = end_table)
table :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_table(doc, attrs, ud)
	return true
}

begin_caption :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "caption", attrs, ud, false)
}

end_caption :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "caption", attrs, ud)
}

@(deferred_in = end_caption)
caption :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_caption(doc, attrs, ud)
	return true
}

begin_colgroup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "colgroup", attrs, ud, false)
}

end_colgroup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "colgroup", attrs, ud)
}

@(deferred_in = end_colgroup)
colgroup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_colgroup(doc, attrs, ud)
	return true
}

begin_tbody :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "tbody", attrs, ud, false)
}

end_tbody :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "tbody", attrs, ud)
}

@(deferred_in = end_tbody)
tbody :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_tbody(doc, attrs, ud)
	return true
}

begin_thead :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "thead", attrs, ud, false)
}

end_thead :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "thead", attrs, ud)
}

@(deferred_in = end_thead)
thead :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_thead(doc, attrs, ud)
	return true
}

begin_tfoot :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "tfoot", attrs, ud, false)
}

end_tfoot :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "tfoot", attrs, ud)
}

@(deferred_in = end_tfoot)
tfoot :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_tfoot(doc, attrs, ud)
	return true
}

begin_tr :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "tr", attrs, ud, false)
}

end_tr :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "tr", attrs, ud)
}

@(deferred_in = end_tr)
tr :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_tr(doc, attrs, ud)
	return true
}

begin_td :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "td", attrs, ud, false)
}

end_td :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "td", attrs, ud)
}

@(deferred_in = end_td)
td :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_td(doc, attrs, ud)
	return true
}

begin_th :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "th", attrs, ud, false)
}

end_th :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "th", attrs, ud)
}

@(deferred_in = end_th)
th :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_th(doc, attrs, ud)
	return true
}

begin_form :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "form", attrs, ud, false)
}

end_form :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "form", attrs, ud)
}

@(deferred_in = end_form)
form :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_form(doc, attrs, ud)
	return true
}

begin_fieldset :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "fieldset", attrs, ud, false)
}

end_fieldset :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "fieldset", attrs, ud)
}

@(deferred_in = end_fieldset)
fieldset :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_fieldset(doc, attrs, ud)
	return true
}

begin_legend :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "legend", attrs, ud, false)
}

end_legend :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "legend", attrs, ud)
}

@(deferred_in = end_legend)
legend :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_legend(doc, attrs, ud)
	return true
}

begin_label :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "label", attrs, ud, false)
}

end_label :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "label", attrs, ud)
}

@(deferred_in = end_label)
label :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_label(doc, attrs, ud)
	return true
}

begin_button :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "button", attrs, ud, false)
}

end_button :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "button", attrs, ud)
}

@(deferred_in = end_button)
button :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_button(doc, attrs, ud)
	return true
}

begin_select :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "select", attrs, ud, false)
}

end_select :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "select", attrs, ud)
}

@(deferred_in = end_select)
select :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_select(doc, attrs, ud)
	return true
}

begin_datalist :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "datalist", attrs, ud, false)
}

end_datalist :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "datalist", attrs, ud)
}

@(deferred_in = end_datalist)
datalist :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_datalist(doc, attrs, ud)
	return true
}

begin_optgroup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "optgroup", attrs, ud, false)
}

end_optgroup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "optgroup", attrs, ud)
}

@(deferred_in = end_optgroup)
optgroup :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_optgroup(doc, attrs, ud)
	return true
}

begin_option :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "option", attrs, ud, false)
}

end_option :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "option", attrs, ud)
}

@(deferred_in = end_option)
option :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_option(doc, attrs, ud)
	return true
}

begin_textarea :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "textarea", attrs, ud, false)
}

end_textarea :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "textarea", attrs, ud)
}

@(deferred_in = end_textarea)
textarea :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_textarea(doc, attrs, ud)
	return true
}

begin_keygen :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "keygen", attrs, ud, false)
}

end_keygen :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "keygen", attrs, ud)
}

@(deferred_in = end_keygen)
keygen :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_keygen(doc, attrs, ud)
	return true
}

begin_output :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "output", attrs, ud, false)
}

end_output :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "output", attrs, ud)
}

@(deferred_in = end_output)
output :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_output(doc, attrs, ud)
	return true
}

begin_progress :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "progress", attrs, ud, false)
}

end_progress :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "progress", attrs, ud)
}

@(deferred_in = end_progress)
progress :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_progress(doc, attrs, ud)
	return true
}

begin_meter :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "meter", attrs, ud, false)
}

end_meter :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "meter", attrs, ud)
}

@(deferred_in = end_meter)
meter :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_meter(doc, attrs, ud)
	return true
}

begin_details :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "details", attrs, ud, false)
}

end_details :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "details", attrs, ud)
}

@(deferred_in = end_details)
details :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_details(doc, attrs, ud)
	return true
}

begin_summary :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "summary", attrs, ud, false)
}

end_summary :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "summary", attrs, ud)
}

@(deferred_in = end_summary)
summary :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_summary(doc, attrs, ud)
	return true
}

begin_command :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "command", attrs, ud, false)
}

end_command :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "command", attrs, ud)
}

@(deferred_in = end_command)
command :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_command(doc, attrs, ud)
	return true
}

begin_menu :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "menu", attrs, ud, false)
}

end_menu :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "menu", attrs, ud)
}

@(deferred_in = end_menu)
menu :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_menu(doc, attrs, ud)
	return true
}

begin_bdo :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "bdo", attrs, ud, false)
}

end_bdo :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "bdo", attrs, ud)
}

@(deferred_in = end_bdo)
bdo :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_bdo(doc, attrs, ud)
	return true
}

begin_dialog :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "dialog", attrs, ud, false)
}

end_dialog :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "dialog", attrs, ud)
}

@(deferred_in = end_dialog)
dialog :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_dialog(doc, attrs, ud)
	return true
}

begin_slot :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	begin_el(doc, "slot", attrs, ud, false)
}

end_slot :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) {
	end_el(doc, "slot", attrs, ud)
}

@(deferred_in = end_slot)
slot :: #force_inline proc(doc: ^Doc, attrs: Attributes = nil, ud: rawptr = nil) -> bool {
	begin_slot(doc, attrs, ud)
	return true
}

