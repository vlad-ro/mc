
This mc fork is focused on providing bright syntax higlighting color scheme as well as overall syntax highlighting improvements.

All changes are in `misc/syntax`, summary of changes per file below.
All custom files are in `contrib/_vlad-ro`

`Syntax.in`:

- Highlight `Vagrantfile` as Ruby
- Highlight `.ejs` as HTML
- Highlight `.json` as JavaScript

`c.syntax`:

- Bright color scheme
- Hightlight numbers and NULL
- Advanced preprocessor highlight rules

`cxx.syntax`:

- Bright color scheme
- List preprocessor reserved words

`ejs.syntax`:

- New file for Embedded JavaScript templates based on html.syntax

`html.syntax`:

- Bright color scheme
- Support all HTML tags
- Nested JavaScript higlighting
- Nested CSS higlighting

`js.syntax`:

- Bright color scheme

`m4.syntax`:

- Bright color scheme

`syntax.syntax`:

- Bright color scheme
- Support comments starting with a tab character
