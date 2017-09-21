include(common.m4)dnl
divert(-1)
ifelse(COLOR_SCHEME, <[bright]>, <[
# Bright color scheme
define(HTML_TAG, white)
define(HTML_STRING, brightcyan)
define(JS_SPECIAL_SYMBOL, white)
]>, <[
# Default color scheme
define(<[CL_COMMENT]>, brown/22)
define(HTML_TAG, brightcyan/17)
define(HTML_STRING, cyan/5)
define(JS_SPECIAL_SYMBOL, brightcyan)
]>)
divert<[]>dnl

caseinsensitive

context default<[]>CL_DEFAULT
    keyword whole &*; brightgreen/16
    spellcheck

    keyword <SCRIPT HTML_TAG
    keyword <STYLE HTML_TAG
    keyword </\[a-zA-Z\]+> HTML_TAG
    keyword </H1> HTML_TAG
    keyword </H2> HTML_TAG
    keyword </H3> HTML_TAG
    keyword </H4> HTML_TAG
    keyword </H5> HTML_TAG
    keyword </H6> HTML_TAG


context <A >                    HTML_TAG
    keyword = brightred/18

    keyword "http:*" magenta/22
    keyword "ftp:*" magenta/22
    keyword "news:*" magenta/22
    keyword "mailto:*" magenta/22
    keyword "gopher:*" magenta/22
    keyword "telnet:*" magenta/22
    keyword "file:*" magenta/22
    keyword "javascript:*" magenta/22

    keyword "Alternate" magenta/22
    keyword "Stylesheet" magenta/22
    keyword "Start" magenta/22
    keyword "Next" magenta/22
    keyword "Prev" magenta/22
    keyword "Contents" magenta/22
    keyword "Index" magenta/22
    keyword "Glossary" magenta/22
    keyword "Copyright" magenta/22
    keyword "Chapter" magenta/22
    keyword "Section" magenta/22
    keyword "Subsection" magenta/22
    keyword "Appendix" magenta/22
    keyword "Help" magenta/22
    keyword "Bookmark" magenta/22

    keyword "_blank" magenta/22
    keyword "_self" magenta/22
    keyword "_parent" magenta/22
    keyword "_top" magenta/22

    keyword "*" HTML_STRING
    keyword '*' HTML_STRING

#    keyword whole charset       yellow/24
#    keyword whole type          yellow/24
    keyword whole name yellow/24
    keyword whole href yellow/24
#    keyword whole hreflang      yellow/24
#    keyword whole rel           yellow/24
#    keyword whole rev           yellow/24
    keyword whole shape yellow/24
    keyword whole coords yellow/24
#    keyword whole tabindex      yellow/24
#    keyword whole selected      yellow/24
    keyword whole target yellow/24
    keyword whole onblur yellow/24
    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onfocus yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24


context <ADDRESS >              HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole dir yellow/24
    keyword whole title yellow/24
    keyword whole lang yellow/24

    keyword whole onblur yellow/24
    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onfocus yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING

context <APPLET >               HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole align yellow/24
    keyword whole alt yellow/24
    keyword whole archive yellow/24
    keyword whole code yellow/24
    keyword whole codebase yellow/24
    keyword whole height yellow/24
    keyword whole hspace yellow/24
    keyword whole mayscript yellow/24
    keyword whole name yellow/24
    keyword whole object yellow/24
    keyword whole vspace yellow/24
    keyword whole width yellow/24

    keyword "http:*" magenta/22
    keyword "ftp:*" magenta/22
    keyword "news:*" magenta/22
    keyword "mailto:*" magenta/22
    keyword "gopher:*" magenta/22
    keyword "telnet:*" magenta/22
    keyword "file:*" magenta/22
    keyword "javascript:*" magenta/22
    keyword "*.class" magenta/22
    keyword "*" HTML_STRING

context <AREA >                 HTML_TAG
    keyword = brightred/18

#    keyword whole accesskey     yellow/24
#    keyword whole alt           yellow/24
    keyword whole coords yellow/24
    keyword whole href yellow/24
    keyword whole nohref yellow/24
    keyword whole shape yellow/24
#    keyword whole onfocus       yellow/24
#    keyword whole onblur        yellow/24
    keyword whole target magenta/22
    keyword "_blank" magenta/22
    keyword "_self" magenta/22
    keyword "_parent" magenta/22
    keyword "_top" magenta/22

    keyword "DEFAULT" magenta/22
    keyword "CIRCLE" magenta/22
    keyword "POLY" magenta/22
    keyword "POLYGON" magenta/22
    keyword "RECT" magenta/22
    keyword "RECTANGLE" magenta/22

    keyword "http:*" magenta/22
    keyword "ftp:*" magenta/22
    keyword "news:*" magenta/22
    keyword "gopher:*" magenta/22
    keyword "telnet:*" magenta/22
    keyword "*" HTML_STRING

context <B >                    HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING

context <BASE >                 HTML_TAG
    keyword = brightred/18

    keyword whole href yellow/24
    keyword whole target yellow/24
    keyword "_blank" magenta/22
    keyword "_self" magenta/22
    keyword "_parent" magenta/22
    keyword "_top" magenta/22

    keyword "http:*" magenta/22
    keyword "ftp:*" magenta/22
    keyword "*" HTML_STRING

context <BASEFONT >             HTML_TAG
    keyword = brightred/18
    keyword " magenta/22

    keyword whole id yellow/24
    keyword whole size yellow/24
    keyword whole color yellow/24
    keyword whole face yellow/24
    keyword "*" HTML_STRING

context <BIG >                  HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING


context <BLOCKQUOTE >           HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole cite yellow/24
    keyword "*" HTML_STRING


context <BODY >                 HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole onload yellow/24
    keyword whole onunload yellow/24

    keyword whole alink yellow/24
    keyword whole background yellow/24

    keyword "*.gif" brightred/19
    keyword "*.jpg" brightred/19
    keyword "*.png" brightred/19
    keyword "*" HTML_STRING

    keyword whole bgcolor yellow/24
    keyword whole link yellow/24
    keyword whole text yellow/24
    keyword whole vlink yellow/24

context <BR >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24
    keyword "*" HTML_STRING


context <BUTTON >               HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING

context <CAPTION >              HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole align yellow/24
    keyword whole valign yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING

context <CENTER >               HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING


context <CITE >                 HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING


context <CODE >                 HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING

context <DD >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING

context <DIR >                  HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING


context <DIV >                  HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole align yellow/24
    keyword whole "center" magenta/22
    keyword whole "justify" magenta/22
    keyword whole "left" magenta/22
    keyword whole "right" magenta/22
    keyword "*" HTML_STRING
    keyword '*' HTML_STRING


context <DL >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING

context <DT >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING

context <EM >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING


context <DT >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING

context <FONT >                 HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole size yellow/24
    keyword whole color yellow/24
    keyword whole face yellow/24
    keyword "*" HTML_STRING

context <FORM >                 HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole action yellow/24
    keyword whole enctype yellow/24
    keyword whole method yellow/24
    keyword "GET" magenta/22
    keyword "POST" magenta/22
    keyword whole onreset yellow/24
    keyword whole onsubmit yellow/24
    keyword whole target yellow/24
    keyword "_blank" magenta/22
    keyword "_self" magenta/22
    keyword "_parent" magenta/22
    keyword "_top" magenta/22
    keyword "*" HTML_STRING


context <FRAME >                HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole frameborder yellow/24
    keyword whole marginheight yellow/24
    keyword whole marginwidth yellow/24
    keyword whole name yellow/24
    keyword whole noresize yellow/24
    keyword whole scrolling yellow/24
    keyword "YES" magenta/22
    keyword "NO" magenta/22
    keyword "AUTO" magenta/22
    keyword whole src yellow/24
    keyword "*" HTML_STRING


context <FRAMESET >             HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole border yellow/24
    keyword whole bordercolor yellow/24
    keyword whole cols yellow/24
    keyword whole onload yellow/24
    keyword whole onunload yellow/24
    keyword whole rows yellow/24


context <H1 >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole align yellow/24
    keyword "CENTRE" magenta/22
    keyword "LEFT" magenta/22
    keyword "RIGHT" magenta/22
    keyword "*" HTML_STRING


context <H2 >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole align yellow/24
    keyword "CENTRE" magenta/22
    keyword "LEFT" magenta/22
    keyword "RIGHT" magenta/22
    keyword "*" HTML_STRING


context <H3 >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole align yellow/24
    keyword "CENTRE" magenta/22
    keyword "LEFT" magenta/22
    keyword "RIGHT" magenta/22
    keyword "*" HTML_STRING


context <H4 >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole align yellow/24
    keyword "CENTRE" magenta/22
    keyword "LEFT" magenta/22
    keyword "RIGHT" magenta/22
    keyword "*" HTML_STRING


context <H5 >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole align yellow/24
    keyword "centre" magenta/22
    keyword "left" magenta/22
    keyword "right" magenta/22
    keyword "*" HTML_STRING


context <H6 >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole align yellow/24
    keyword "centre" magenta/22
    keyword "left" magenta/22
    keyword "right" magenta/22
    keyword "*" HTML_STRING


context <HEAD >                 HTML_TAG
    keyword = brightred/18

    keyword whole dir yellow/24
    keyword whole lang yellow/24
    keyword "*" HTML_STRING


context <HR >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24
    keyword whole color yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole align yellow/24
    keyword "centre" magenta/22
    keyword "left" magenta/22
    keyword "right" magenta/22
    keyword whole align yellow/24
    keyword whole noshade yellow/24
    keyword whole size yellow/24
    keyword whole width yellow/24
    keyword "*" HTML_STRING


context <HTML >                 HTML_TAG
    keyword = brightred/18

    keyword whole dir yellow/24
    keyword whole lang yellow/24
    keyword "*" HTML_STRING


context <IMG >                  HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole alt yellow/24
    keyword whole border yellow/24
    keyword whole height yellow/24
    keyword whole hspace yellow/24
    keyword whole ismap yellow/24
    keyword whole src yellow/24
    keyword "*.gif" brightred/19
    keyword "*.jpg" brightred/19
    keyword "*.png" brightred/19
    keyword "*" HTML_STRING
    keyword '*' HTML_STRING
    keyword whole usemap yellow/24
    keyword whole vspace yellow/24
    keyword whole width yellow/24

context <I >                    HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING


context <LINK >                 HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole type yellow/24

    keyword "text/css" magenta/22
    keyword "text/javascript" magenta/22
    keyword "*" HTML_STRING


context <META >                 HTML_TAG
    keyword = brightred/18

    keyword whole content yellow/24
    keyword whole http-equiv yellow/24
    keyword whole name yellow/24
    keyword "*" HTML_STRING

context <P >                    HTML_TAG
    keyword = brightred/18
    keyword "*" HTML_STRING


context <TITLE >                HTML_TAG
    keyword = brightred/18
    keyword whole dir yellow/24
    keyword whole lang yellow/24
    keyword "*" HTML_STRING

context <TABLE >                HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole align yellow/24
    keyword whole bgcolor yellow/24
    keyword whole border yellow/24
    keyword whole width yellow/24
    keyword whole cellspacing yellow/24
    keyword whole cellpadding yellow/24
    keyword "right" magenta/22
    keyword "left" magenta/22
    keyword "*" HTML_STRING


context <SMALL >                HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24
    keyword "*" HTML_STRING

context <TD >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole colspan yellow/24
    keyword whole rowspan yellow/24
    keyword whole align yellow/24
    keyword "centre" magenta/22
    keyword "char" magenta/22
    keyword "justify" magenta/22
    keyword "left" magenta/22
    keyword "right" magenta/22
    keyword whole bgcolor yellow/24
    keyword whole valign yellow/24
    keyword "baseline" magenta/22
    keyword "bottom" magenta/22
    keyword "middle" magenta/22
    keyword "top" magenta/22
    keyword whole colorspan yellow/24
    keyword whole height yellow/24
    keyword whole nowrap yellow/24
    keyword whole rowspan yellow/24
    keyword whole width yellow/24

    keyword "*" HTML_STRING


context <TR >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

    keyword whole onclick yellow/24
    keyword whole ondblclick yellow/24
    keyword whole onkeydown yellow/24
    keyword whole onkeypress yellow/24
    keyword whole onkeyup yellow/24
    keyword whole onmousedown yellow/24
    keyword whole onmousemove yellow/24
    keyword whole onmouseout yellow/24
    keyword whole onmouseover yellow/24
    keyword whole onmouseup yellow/24

    keyword whole align yellow/24
    keyword "centre" magenta/22
    keyword "char" magenta/22
    keyword "justify" magenta/22
    keyword "left" magenta/22
    keyword "right" magenta/22

    keyword whole bgcolor yellow/24
    keyword whole valign yellow/24
    keyword "baseline" magenta/22
    keyword "bottom" magenta/22
    keyword "middle" magenta/22
    keyword "top" magenta/22

    keyword "*" HTML_STRING

context <TT >                   HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

context <U >                    HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

context <PRE >                  HTML_TAG
    keyword = brightred/18

    keyword whole class yellow/24
    keyword whole id yellow/24
    keyword whole style yellow/24
    keyword whole title yellow/24

    keyword whole dir yellow/24
    keyword whole lang yellow/24

context <!-- -->                CL_COMMENT
    spellcheck

context <! > brightred/orange
    spellcheck

context <% %>                   white black

context exclusive <script </script><[]>CL_DEFAULT

    #=========================
    # <script> tag attributes
    keyword whole language yellow
    keyword whole src yellow

    keyword "JavaScript" magenta
    keyword "JavaScript1.2" magenta
    keyword "JavaScript1.1" magenta

    #=========================
    # Keywords
    keyword whole arguments CL_KEYWORD
    keyword whole break CL_KEYWORD
    keyword whole caller CL_KEYWORD
    keyword whole case CL_KEYWORD
    keyword whole catch CL_KEYWORD
    keyword whole class CL_KEYWORD
    keyword whole const CL_KEYWORD
    keyword whole constructor CL_KEYWORD
    keyword whole continue CL_KEYWORD
    keyword whole else CL_KEYWORD
    keyword whole extends CL_KEYWORD
    keyword whole export CL_KEYWORD
    keyword whole default CL_KEYWORD
    keyword whole delete CL_KEYWORD
    keyword whole for CL_KEYWORD
    keyword whole function CL_KEYWORD
    keyword whole if CL_KEYWORD
    keyword whole import CL_KEYWORD
    keyword whole in CL_KEYWORD
    keyword whole instanceof CL_KEYWORD
    keyword whole let CL_KEYWORD
    keyword whole new CL_KEYWORD
    keyword whole of CL_KEYWORD
    keyword whole prototype CL_KEYWORD
    keyword whole return CL_KEYWORD
    keyword whole switch CL_KEYWORD
    keyword whole this CL_KEYWORD
    keyword whole throw CL_KEYWORD
    keyword whole try CL_KEYWORD
    keyword whole typeof CL_KEYWORD
    keyword whole var CL_KEYWORD
    keyword whole while CL_KEYWORD
    keyword whole with CL_KEYWORD
    keyword whole yield CL_KEYWORD

    #=========================
    # Objects
    keyword whole ActiveXObject CL_KEYWORD
    keyword whole Array CL_KEYWORD
    keyword whole Boolean CL_KEYWORD
    keyword whole Date CL_KEYWORD
    keyword whole Dictionary CL_KEYWORD
    keyword whole Enumerator CL_KEYWORD
    keyword whole FileSystemObject CL_KEYWORD
    keyword whole Function CL_KEYWORD
    keyword whole Global CL_KEYWORD
    keyword whole Image CL_KEYWORD
    keyword whole Math CL_KEYWORD
    keyword whole Map CL_KEYWORD
    keyword whole Number CL_KEYWORD
    keyword whole Object CL_KEYWORD
    keyword whole Promise CL_KEYWORD
    keyword whole Proxy CL_KEYWORD
    keyword whole Reflect CL_KEYWORD
    keyword whole Set CL_KEYWORD
    keyword whole Symbol CL_KEYWORD
    keyword whole TextStream CL_KEYWORD
    keyword whole RegExp CL_KEYWORD
    keyword whole VBArray CL_KEYWORD
    keyword whole WeakMap CL_KEYWORD
    keyword whole WeakSet CL_KEYWORD

    #=========================
    # Most common functions
    keyword whole alert CL_KEYWORD
    keyword whole escape CL_KEYWORD
    keyword whole eval CL_KEYWORD
    keyword whole indexOf CL_KEYWORD
    keyword whole isNaN CL_KEYWORD
    keyword whole toString CL_KEYWORD
    keyword whole unescape CL_KEYWORD
    keyword whole valueOf CL_KEYWORD

    #=========================
    # Constants
    keyword whole false brightgreen
    keyword whole null brightgreen
    keyword whole true brightgreen
    keyword whole undefined CL_KEYWORD

    #=========================
    # Comments - can't handle multiline comment as it can only be done by context
    keyword /\**\*/ CL_COMMENT
    keyword //*\n CL_COMMENT

    #=========================
    # Numbers
    wholechars abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.

    keyword whole 0\{xX\}\{0123456789abcdefABCDEF\}\[0123456789abcdefABCDEF\] brightgreen
    keyword whole \{0123456789\}\[0123456789\] brightgreen
    keyword whole \[0123456789\]\.\{0123456789\}\[0123456789\] brightgreen
    keyword whole \{0123456789\}\[0123456789\]\.\[0123456789\] brightgreen
    keyword whole \{0123456789\}\[0123456789\]\{eE\}\{0123456789\}\[0123456789\] brightgreen
    keyword whole \{0123456789\}\[0123456789\]\{eE\}\{\-\+\}\{0123456789\}\[0123456789\] brightgreen
    keyword whole \{0123456789\}\[0123456789\]\.\{0123456789\}\[0123456789\]\{eE\}\{0123456789\}\[0123456789\] brightgreen
    keyword whole \{0123456789\}\[0123456789\]\.\{0123456789\}\[0123456789\]\{eE\}\{\-\+\}\{0123456789\}\[0123456789\] brightgreen

    #=========================
    # Special symbols
    keyword => JS_SPECIAL_SYMBOL
    keyword \. CL_SYMBOL
    keyword \* CL_SYMBOL
    keyword \+ CL_SYMBOL
    keyword - CL_SYMBOL
    keyword / CL_SYMBOL
    keyword % CL_SYMBOL
    keyword = CL_SYMBOL
    keyword ! CL_SYMBOL
    keyword & CL_SYMBOL
    keyword | CL_SYMBOL
    keyword ^ CL_SYMBOL
    keyword ~ CL_SYMBOL
    keyword > CL_SYMBOL
    keyword < CL_SYMBOL

    #=========================
    # Separators
    keyword { JS_SPECIAL_SYMBOL
    keyword } JS_SPECIAL_SYMBOL
    keyword ( JS_SPECIAL_SYMBOL
    keyword ) JS_SPECIAL_SYMBOL
    keyword [ JS_SPECIAL_SYMBOL
    keyword ] JS_SPECIAL_SYMBOL
    keyword , JS_SPECIAL_SYMBOL
    keyword ? JS_SPECIAL_SYMBOL
    keyword : JS_SPECIAL_SYMBOL
    keyword ; brightmagenta

    #=========================
    # Strings
    keyword "*" HTML_STRING
    keyword '*' HTML_STRING
    keyword `*` HTML_STRING

    #=========================
    # Regular expressions
    keyword /*/ HTML_STRING


context exclusive <style </style><[]>CL_DEFAULT

    #=========================
    # <style> tag attributes
    keyword whole type yellow
    keyword "text/css" magenta

#   -moz-...
    keyword whole \-\{ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz\}\[\-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz\] lightgray
#   class
    keyword whole \.\{ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz\}\[\-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz\] green

    keyword whole body white
    keyword whole div white
    keyword whole p white
    keyword whole a white
    keyword whole h1 white
    keyword whole h2 white
    keyword whole h3 white
    keyword whole h4 white
    keyword whole h5 white
    keyword whole h6 white
    keyword whole 'font' white
    keyword whole br white
    keyword whole table white
    keyword whole td white
    keyword whole th white
    keyword whole tr white
    keyword whole u white
    keyword whole i white
    keyword whole b white
    keyword whole address white
    keyword whole big white
    keyword whole small white
    keyword whole sub white
    keyword whole sup white
    keyword whole img white
    keyword whole form white
    keyword whole textarea white
    keyword whole input white
    keyword whole select white
    keyword whole option white
    keyword whole optgroup white


    keyword \:\:add-line white
    keyword \:\:add-page white
    keyword \:\:branch white
    keyword \:\:chunk white
    keyword \:\:close-button white
    keyword \:\:down-arrow white
    keyword \:\:down-button white
    keyword \:\:drop-down white
    keyword \:\:float-button white
    keyword \:\:groove white
    keyword \:\:indicator white
    keyword \:\:handle white
    keyword \:\:icon white
    keyword \:\:item white
    keyword \:\:left-arrow white
    keyword \:\:left-corner white
    keyword \:\:menu-arrow white
    keyword \:\:menu-button white
    keyword \:\:menu-indicator white
    keyword \:\:right-arrow white
    keyword \:\:pane white
    keyword \:\:right-corner white
    keyword \:\:scroller white
    keyword \:\:section white
    keyword \:\:separator white
    keyword \:\:sub-line white
    keyword \:\:sub-page white
    keyword \:\:tab white
    keyword \:\:tab-bar white
    keyword \:\:tear white
    keyword \:\:tear-off white
    keyword \:\:text white
    keyword \:\:title white
    keyword \:\:up-arrow white
    keyword \:\:up-button white

    keyword  \:active brightmagenta
    keyword  \:after brightmagenta
    keyword  \:visited brightmagenta
    keyword  \:before brightmagenta
    keyword  \:first-child brightmagenta
    keyword  \:first-letter brightmagenta
    keyword  \:first-line brightmagenta
    keyword  \:focus brightmagenta
    keyword  \:lang brightmagenta
    keyword  \:link brightmagenta
    keyword  \:adjoins-item brightmagenta
    keyword  \:alternate brightmagenta
    keyword  \:bottom brightmagenta
    keyword  \:checked brightmagenta
    keyword  \:closable brightmagenta
    keyword  \:closed brightmagenta
    keyword  \:default brightmagenta
    keyword  \:disabled brightmagenta
    keyword  \:editable brightmagenta
    keyword  \:edit-focus brightmagenta
    keyword  \:enabled brightmagenta
    keyword  \:exclusive brightmagenta
    keyword  \:first brightmagenta
    keyword  \:flat brightmagenta
    keyword  \:floatable brightmagenta
    keyword  \:has-children brightmagenta
    keyword  \:has-siblings brightmagenta
    keyword  \:horizontal brightmagenta
    keyword  \:hover brightmagenta
    keyword  \:indeterminate brightmagenta
    keyword  \:last brightmagenta
    keyword  \:left brightmagenta
    keyword  \:maximized brightmagenta
    keyword  \:middle brightmagenta
    keyword  \:minimized brightmagenta
    keyword  \:movable brightmagenta
    keyword  \:no-frame brightmagenta
    keyword  \:non-exclusive brightmagenta
    keyword  \:off brightmagenta
    keyword  \:on brightmagenta
    keyword  \:only-one brightmagenta
    keyword  \:open brightmagenta
    keyword  \:next-selected brightmagenta
    keyword  \:pressed brightmagenta
    keyword  \:previous-selected brightmagenta
    keyword  \:read-only brightmagenta
    keyword  \:right brightmagenta
    keyword  \:selected brightmagenta
    keyword  \:top brightmagenta
    keyword  \:unchecked brightmagenta
    keyword  \:vertical brightmagenta
    keyword  \:window brightmagenta

    keyword whole \!important brightred

    keyword whole background-attachment lightgray
    keyword whole background-color lightgray
    keyword whole background-image lightgray
    keyword whole background-position lightgray
    keyword whole background-repeat lightgray
    keyword whole background lightgray
    keyword whole bidi-override lightgray
    keyword whole border-bottom lightgray
    keyword whole border-bottom-color lightgray
    keyword whole border-bottom-style lightgray
    keyword whole border-bottom-width lightgray
    keyword whole border-collapse lightgray
    keyword whole border-color lightgray
    keyword whole border-left lightgray
    keyword whole border-left-color lightgray
    keyword whole border-left-style lightgray
    keyword whole border-left-width lightgray
    keyword whole border-right lightgray
    keyword whole border-right-color lightgray
    keyword whole border-right-style lightgray
    keyword whole border-right-width lightgray
    keyword whole border-spacing lightgray
    keyword whole border-style lightgray
    keyword whole border-top lightgray
    keyword whole border-top-color lightgray
    keyword whole border-top-style lightgray
    keyword whole border-top-width lightgray
    keyword whole border-width lightgray
    keyword whole border lightgray
    keyword whole bottom lightgray
    keyword whole caption-side lightgray
    keyword whole clear lightgray
    keyword whole clip lightgray
    keyword whole color lightgray
    keyword whole content lightgray
    keyword whole counter-increment lightgray
    keyword whole cursor lightgray
    keyword whole direction lightgray
    keyword whole display lightgray
    keyword whole empty-cells lightgray
    keyword whole fixed lightgray
    keyword whole float lightgray
    keyword whole font-size-adjust lightgray
    keyword whole font-stretch lightgray
    keyword whole font-family lightgray
    keyword whole font-size lightgray
    keyword whole font-style lightgray
    keyword whole font-variant lightgray
    keyword whole font-weight lightgray
    keyword whole font lightgray
    keyword whole generic-family lightgray
    keyword whole height lightgray
    keyword whole identifier lightgray
    keyword whole image lightgray
    keyword whole justify lightgray
    keyword whole left lightgray
    keyword whole length lightgray
    keyword whole letter-spacing lightgray
    keyword whole line-height lightgray
    keyword whole list-style-image lightgray
    keyword whole list-style-position lightgray
    keyword whole list-style-type lightgray
    keyword whole list-style lightgray
    keyword whole margin-left lightgray
    keyword whole margin-top lightgray
    keyword whole margin lightgray
    keyword whole marker-offset lightgray
    keyword whole max-height lightgray
    keyword whole max-width lightgray
    keyword whole min-height lightgray
    keyword whole min-width lightgray
    keyword whole nowrap lightgray
    keyword whole outline-color lightgray
    keyword whole outline-style lightgray
    keyword whole outline-width lightgray
    keyword whole outline lightgray
    keyword whole padding-left lightgray
    keyword whole padding-top lightgray
    keyword whole padding lightgray
    keyword whole position lightgray
    keyword whole quotes lightgray
    keyword whole right lightgray
    keyword whole subcontrol-origin lightgray
    keyword whole subcontrol-position lightgray
    keyword whole table-layout lightgray
    keyword whole text-align lightgray
    keyword whole text-decoration lightgray
    keyword whole text-indent lightgray
    keyword whole text-shadow lightgray
    keyword whole text-transform lightgray
    keyword whole top lightgray
    keyword whole unicode-bidi lightgray
    keyword whole vertical-align lightgray
    keyword whole visibility lightgray
    keyword whole white-space lightgray
    keyword whole width lightgray
    keyword whole word-spacing lightgray
    keyword whole opacity lightgray
    keyword whole filter lightgray

    keyword whole qconicalgradient brightgreen
    keyword whole qlineargradient brightgreen
    keyword whole qradialgradient brightgreen

    keyword whole center brightgreen
    keyword whole bold brightgreen
    keyword whole smaller brightgreen
    keyword whole italic brightgreen
    keyword whole bolder brightgreen
    keyword whole underline brightgreen
    keyword whole absolute brightgreen

    keyword whole none brightgreen
    keyword whole auto brightgreen
    keyword whole blink brightgreen
    keyword whole hide brightgreen

    keyword whole thin brightgreen
    keyword whole medium brightgreen
    keyword whole thick brightgreen


    keyword whole disc brightgreen
    keyword whole circle brightgreen
    keyword whole square brightgreen
    keyword whole decimal brightgreen
    keyword whole decimal-leading-zero brightgreen
    keyword whole lower-roman brightgreen
    keyword whole upper-roman brightgreen
    keyword whole lower-alpha brightgreen
    keyword whole upper-alpha brightgreen
    keyword whole lower-greek brightgreen
    keyword whole lower-latin brightgreen
    keyword whole upper-latin brightgreen
    keyword whole hebrew brightgreen
    keyword whole armenian brightgreen
    keyword whole georgian brightgreen
    keyword whole cjk-ideographic brightgreen
    keyword whole hiragana brightgreen
    keyword whole katakana brightgreen
    keyword whole hiragana-iroha brightgreen
    keyword whole katakana-iroha brightgreen

    keyword whole invert brightgreen
    keyword whole oblique brightgreen
    keyword whole no-close-quote brightgreen
    keyword whole repeat-x brightgreen
    keyword whole repeat-y brightgreen
    keyword whole repeat brightgreen
    keyword whole no-repeat brightgreen
    keyword whole small-caps brightgreen
    keyword whole transparent brightgreen

    keyword whole visible brightgreen
    keyword whole hidden brightgreen
    keyword whole dotted brightgreen

    keyword whole dashed brightgreen
    keyword whole solid brightgreen
    keyword whole double brightgreen
    keyword whole groove brightgreen
    keyword whole ridge brightgreen
    keyword whole inset brightgreen
    keyword whole outset brightgreen

    keyword whole crosshair brightgreen
    keyword whole default brightgreen
    keyword whole pointer brightgreen
    keyword whole move brightgreen
    keyword whole e-resize brightgreen
    keyword whole ne-resize brightgreen
    keyword whole nw-resize brightgreen
    keyword whole n-resize brightgreen
    keyword whole se-resize brightgreen
    keyword whole sw-resize brightgreen
    keyword whole s-resize brightgreen
    keyword whole w-resize brightgreen
    keyword whole text brightgreen
    keyword whole wait brightgreen
    keyword whole help brightgreen

    keyword whole inline brightgreen
    keyword whole block brightgreen
    keyword whole list-item brightgreen
    keyword whole run-in brightgreen
    keyword whole compact brightgreen
    keyword whole marker brightgreen
    keyword whole inline-table brightgreen
    keyword whole table-row-group brightgreen
    keyword whole table-header-group brightgreen
    keyword whole table-footer-group brightgreen
    keyword whole table-row brightgreen
    keyword whole table-column-group brightgreen
    keyword whole table-column brightgreen
    keyword whole table-cell brightgreen
    keyword whole table-caption brightgreen

    keyword whole large brightgreen

    keyword whole normal brightgreen
    keyword whole lighter brightgreen

    keyword whole open-quote brightgreen
    keyword whole close-quote brightgreen
    keyword whole no-open-quote brightgreen

    keyword whole baseline brightgreen
    keyword whole super brightgreen
    keyword whole text-top brightgreen
    keyword whole middle brightgreen
    keyword whole text-bottom brightgreen

    keyword whole collapse brightgreen
    keyword whole separate brightgreen

    keyword whole capitalize brightgreen
    keyword whole uppercase brightgreen
    keyword whole lowercase brightgreen

    keyword whole pre brightgreen

    keyword whole aliceblue brightgreen
    keyword whole antiquewhite brightgreen
    keyword whole aqua brightgreen
    keyword whole aquamarine brightgreen
    keyword whole azure brightgreen
    keyword whole beige brightgreen
    keyword whole bisque brightgreen
    keyword whole black brightgreen
    keyword whole blanchedalmond brightgreen
    keyword whole blue brightgreen
    keyword whole blueviolet brightgreen
    keyword whole brown brightgreen
    keyword whole burlywood brightgreen
    keyword whole cadetblue brightgreen
    keyword whole chartreuse brightgreen
    keyword whole chocolate brightgreen
    keyword whole coral brightgreen
    keyword whole cornflowerblue brightgreen
    keyword whole cornsilk brightgreen
    keyword whole crimson brightgreen
    keyword whole cyan brightgreen
    keyword whole darkblue brightgreen
    keyword whole darkcyan brightgreen
    keyword whole darkgoldenrod brightgreen
    keyword whole darkgray brightgreen
    keyword whole darkgreen brightgreen
    keyword whole darkkhaki brightgreen
    keyword whole darkmagenta brightgreen
    keyword whole darkolivegreen brightgreen
    keyword whole darkorange brightgreen
    keyword whole darkorchid brightgreen
    keyword whole darkred brightgreen
    keyword whole darksalmon brightgreen
    keyword whole darkseagreen brightgreen
    keyword whole darkslateblue brightgreen
    keyword whole darkslategray brightgreen
    keyword whole darkturquoise brightgreen
    keyword whole darkviolet brightgreen
    keyword whole deeppink brightgreen
    keyword whole deepskyblue brightgreen
    keyword whole dimgray brightgreen
    keyword whole dodgerblue brightgreen
    keyword whole feldspar brightgreen
    keyword whole firebrick brightgreen
    keyword whole floralwhite brightgreen
    keyword whole forestgreen brightgreen
    keyword whole fuchsia brightgreen
    keyword whole gainsboro brightgreen
    keyword whole ghostwhite brightgreen
    keyword whole gold brightgreen
    keyword whole goldenrod brightgreen
    keyword whole gray brightgreen
    keyword whole green brightgreen
    keyword whole greenyellow brightgreen
    keyword whole honeydew brightgreen
    keyword whole hotpink brightgreen
    keyword whole indianred brightgreen
    keyword whole indigo brightgreen
    keyword whole ivory brightgreen
    keyword whole khaki brightgreen
    keyword whole lavender brightgreen
    keyword whole lavenderblush brightgreen
    keyword whole lawngreen brightgreen
    keyword whole lemonchiffon brightgreen
    keyword whole lightblue brightgreen
    keyword whole lightcoral brightgreen
    keyword whole lightcyan brightgreen
    keyword whole lightgoldenrodyellow brightgreen
    keyword whole lightgrey brightgreen
    keyword whole lightgreen brightgreen
    keyword whole lightpink brightgreen
    keyword whole lightsalmon brightgreen
    keyword whole lightseagreen brightgreen
    keyword whole lightskyblue brightgreen
    keyword whole lightslateblue brightgreen
    keyword whole lightslategray brightgreen
    keyword whole lightsteelblue brightgreen
    keyword whole lightyellow brightgreen
    keyword whole lime brightgreen
    keyword whole limegreen brightgreen
    keyword whole linen brightgreen
    keyword whole magenta brightgreen
    keyword whole maroon brightgreen
    keyword whole mediumaquamarine brightgreen
    keyword whole mediumblue brightgreen
    keyword whole mediumorchid brightgreen
    keyword whole mediumpurple brightgreen
    keyword whole mediumseagreen brightgreen
    keyword whole mediumslateblue brightgreen
    keyword whole mediumspringgreen brightgreen
    keyword whole mediumturquoise brightgreen
    keyword whole mediumvioletred brightgreen
    keyword whole midnightblue brightgreen
    keyword whole mintcream brightgreen
    keyword whole mistyrose brightgreen
    keyword whole moccasin brightgreen
    keyword whole navajowhite brightgreen
    keyword whole navy brightgreen
    keyword whole oldlace brightgreen
    keyword whole olive brightgreen
    keyword whole olivedrab brightgreen
    keyword whole orange brightgreen
    keyword whole orangered brightgreen
    keyword whole orchid brightgreen
    keyword whole palegoldenrod brightgreen
    keyword whole palegreen brightgreen
    keyword whole paleturquoise brightgreen
    keyword whole palevioletred brightgreen
    keyword whole papayawhip brightgreen
    keyword whole peachpuff brightgreen
    keyword whole peru brightgreen
    keyword whole pink brightgreen
    keyword whole plum brightgreen
    keyword whole powderblue brightgreen
    keyword whole purple brightgreen
    keyword whole red brightgreen
    keyword whole rosybrown brightgreen
    keyword whole royalblue brightgreen
    keyword whole saddlebrown brightgreen
    keyword whole salmon brightgreen
    keyword whole sandybrown brightgreen
    keyword whole seagreen brightgreen
    keyword whole seashell brightgreen
    keyword whole sienna brightgreen
    keyword whole silver brightgreen
    keyword whole skyblue brightgreen
    keyword whole slateblue brightgreen
    keyword whole slategray brightgreen
    keyword whole snow brightgreen
    keyword whole springgreen brightgreen
    keyword whole steelblue brightgreen
    keyword whole tan brightgreen
    keyword whole teal brightgreen
    keyword whole thistle brightgreen
    keyword whole tomato brightgreen
    keyword whole turquoise brightgreen
    keyword whole violet brightgreen
    keyword whole violetred brightgreen
    keyword whole wheat brightgreen
    keyword whole white brightgreen
    keyword whole whitesmoke brightgreen
    keyword whole yellow brightgreen
    keyword whole yellowgreen brightgreen

    # Can't handle mutiline comments since it can only be done with context
    keyword /\**\*/ CL_COMMENT

    keyword whole Arial brightgreen
    keyword whole arial brightgreen
    keyword whole Narrow brightgreen
    keyword whole narrow brightgreen
    keyword whole Trebuchet MS brightgreen
    keyword whole trebuchet ms brightgreen
    keyword whole verdana brightgreen
    keyword whole Verdana brightgreen
    keyword whole sans-serif brightgreen
    keyword whole serif brightgreen
    keyword whole tahoma brightgreen
    keyword whole Tahoma brightgreen
    keyword whole Helvetica brightgreen
    keyword whole helvetica brightgreen

#   #1234BEAF
    keyword #\{0123456789abcdefABCDEF\}\{0123456789abcdefABCDEF\}\{0123456789abcdefABCDEF\}\{0123456789abcdefABCDEF\}\{0123456789abcdefABCDEF\}\{0123456789abcdefABCDEF\} red

    keyword whole \[\-\.0123456789\]px brightgreen
    keyword whole \[\-\.0123456789\]em brightgreen
    keyword whole \[\-\.0123456789\]cm brightgreen
    keyword whole \[\-\.0123456789\]mm brightgreen
    keyword whole \[\-\.0123456789\]ex brightgreen
    keyword whole \[\-\.0123456789\]pt brightgreen
    keyword whole \[\-\.0123456789\]pc brightgreen
    keyword whole \[\-\.0123456789\]%  brightred

    keyword whole \{0123456789\} brightgreen
    keyword whole \.\[0123456789\] brightgreen
    keyword whole \-\{0123456789\} brightgreen

    keyword whole '.' white

    keyword { CL_SEPARATOR
    keyword } CL_SEPARATOR
    keyword ( CL_SEPARATOR
    keyword ) CL_SEPARATOR
    keyword , CL_SEPARATOR
    keyword : CL_SEPARATOR
    keyword ; brightmagenta


    keyword whole counter magenta
    keyword whole counters magenta
    keyword whole rgb magenta
    keyword whole url magenta

context exclusive /\* \*/ CL_COMMENT
    spellcheck

context <\{abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\} >        white
    keyword = brightred
    keyword "*" HTML_STRING
