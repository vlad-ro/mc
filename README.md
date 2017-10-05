
This mc fork is focused on providing alternative syntax higlighting color schemes as well as overall syntax highlighting improvements.

All changes are in `misc/syntax`, summary of changes per file below.
All custom files are in `contrib/_vlad-ro`

TODO: describe how to use alternative color schemes, especially dark one.
TODO: add screenshots

`Syntax.in`:

- Highlight `Vagrantfile` as Ruby
- Highlight `.ejs` as HTML
- Highlight `.json` as JavaScript

`c.syntax`:

- Bright/dark color schemes
- Hightlight numbers and NULL
- Advanced preprocessor highlight rules

`cxx.syntax`:

- Bright/dark color schemes
- List preprocessor reserved words

`ejs.syntax`:

- New file for Embedded JavaScript templates based on html.syntax

`html.syntax`:

- Bright/dark color schemes
- Support all HTML tags
- Nested JavaScript higlighting
- Nested CSS higlighting

`js.syntax`:

- Bright/dark color schemes

`m4.syntax`:

- Bright/dark color schemes

`syntax.syntax`:

- Bright/dark color schemes
- Support comments starting with a tab character
