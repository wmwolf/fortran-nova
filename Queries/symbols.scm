; Programs
(program_statement
  (name) @name) @subtree
  (#set! role function)

; Modules
(module_statement
  (name) @name) @subtree
  (#set! role type)

; Submodules
(submodule_statement
  (name) @name) @subtree
  (#set! role type)

; Subroutines
(subroutine_statement
  (name) @name) @subtree
  (#set! role method)

; Functions
(function_statement
  (name) @name) @subtree
  (#set! role function)

; Derived types
(derived_type_definition
  (derived_type_statement
    (name) @name)) @subtree
  (#set! role struct)

; Interface blocks
(interface_statement) @subtree
  (#set! role interface)
