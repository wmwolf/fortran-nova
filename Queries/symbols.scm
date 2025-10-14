; Programs
((program
  (program_statement (name) @name)) @subtree
  (#set! role function))

; Modules
((module
  (module_statement (name) @name)) @subtree
  (#set! role type))

; Submodules
((submodule
  (submodule_statement (name) @name)) @subtree
  (#set! role type))

; Subroutines
((subroutine
  (subroutine_statement name: (name) @name)) @subtree
  (#set! role method))

; Functions
((function
  (function_statement name: (name) @name)) @subtree
  (#set! role function))

; Derived types
((derived_type_definition
  (derived_type_statement (type_name) @name)) @subtree
  (#set! role struct))
