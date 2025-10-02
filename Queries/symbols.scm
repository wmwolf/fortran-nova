; Programs
(program_statement
  (name) @name
  (#set! role function))

; Modules
(module_statement
  (name) @name
  (#set! role type))

; Submodules
(submodule_statement
  (name) @name
  (#set! role type))

; Subroutines
(subroutine_statement
  (name) @name
  (#set! role method))

; Functions
(function_statement
  (name) @name
  (#set! role function))

; Derived types
(derived_type_statement
  (name) @name
  (#set! role struct))
