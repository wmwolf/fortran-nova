# Fortran Language Extension for Nova

**Fortran** provides comprehensive language support for free-form Fortran (F90 and later) in the Nova editor, powered by [tree-sitter-fortran](https://github.com/stadelmanma/tree-sitter-fortran).

## Features

- **Syntax Highlighting** - Full syntax highlighting for modern Fortran including keywords, types, operators, functions, subroutines, and more
- **Symbol Navigation** - Navigate to programs, modules, subroutines, and functions via the symbol list (⌘P)
- **Code Folding** - Fold major code blocks including programs, modules, functions, subroutines, loops, and conditionals
- **Comment Support** - Proper handling of Fortran comment syntax with `!`

## Supported File Types

This extension automatically activates for the following file types:

- `.f`, `.f90`, `.f95`, `.f03`, `.f08` - Fortran source files
- `.dek` - MESA deck files
- `.inc` - Include files
- `inlist*` - MESA inlist files (namelist files with no extension)

## Language Support

This extension supports **free-form Fortran (Fortran 90 and later)**. Key supported features include:

- Program, module, and submodule structures
- Subroutine and function definitions
- Derived type definitions
- Interface blocks
- Control structures (if/else, select case, do loops, where)
- Intrinsic types and operators
- Array syntax and operations
- Procedure calls

**Note:** Fixed-form Fortran (FORTRAN 77 and earlier) is not currently supported.

## Limitations

- This is a syntax-only extension and does not include Language Server Protocol (LSP) support
- For advanced features like auto-completion, refactoring, and diagnostics, consider using [fortls](https://fortls.fortran-lang.org/) with an LSP client

## Installation

### From the Nova Extension Library

1. Open Nova
2. Go to **Extensions → Extension Library**
3. Search for "Fortran"
4. Click **Install**

### Manual Installation

1. Download the latest release from [GitHub](https://github.com/wmwolf/fortran-nova)
2. Double-click the `.novaextension` file to install

## Credits

This extension was built with [Claude Code](https://claude.com/claude-code), Anthropic's AI-powered coding assistant, which was instrumental in:

- Compiling the tree-sitter parser for Nova's architecture
- Creating comprehensive syntax highlighting queries
- Implementing symbol navigation and code folding
- Setting up the complete extension structure

The syntax parsing is powered by [tree-sitter-fortran](https://github.com/stadelmanma/tree-sitter-fortran) by Matthew Stadelman.

## Contributing

Bug reports and feature requests are welcome on the [GitHub issue tracker](https://github.com/wmwolf/fortran-nova/issues).

## License

MIT License - see the repository for details.
