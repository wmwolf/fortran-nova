# Changelog

## [1.0.0] - 2025-10-02

### Added
- Initial release of Fortran language extension for Nova
- Syntax highlighting for free-form Fortran (F90+)
  - Keywords, types, operators, literals
  - Function/subroutine definitions and calls
  - Array syntax and operators
- Symbol navigation for major code structures
  - Programs, modules, submodules
  - Subroutines and functions
  - Derived types
- Code folding support
  - Programs, modules, functions, subroutines
  - Derived types and interfaces
  - Control structures (if, do, select case, where)
- File type detection
  - Extensions: .f, .f90, .f95, .f03, .f08, .dek, .inc
  - Special support for inlist files (MESA namelist files)
- Automated testing infrastructure
  - Test file with comprehensive examples
  - Automated symbol detection validation

### Known Issues
- Documentation comments (`!!`) appear as nested symbols in symbol navigator
  - This is partially intended behavior for Doxygen-style documentation
  - May be refined in future versions to exclude commented-out code blocks

### Credits
- Built with [Claude Code](https://claude.com/claude-code)
- Powered by [tree-sitter-fortran](https://github.com/stadelmanma/tree-sitter-fortran)
