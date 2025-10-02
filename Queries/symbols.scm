; Programs
(program
  (program_statement (name) @name) @start
  (end_program_statement)? @end
  (#set! role function))

; Modules
(module
  (module_statement (name) @name) @start
  (end_module_statement)? @end
  (#set! role type))

; Submodules
(submodule
  (submodule_statement (name) @name) @start
  (end_submodule_statement)? @end
  (#set! role type))

; Subroutines
(subroutine
  (subroutine_statement name: (name) @name) @start
  (end_subroutine_statement)? @end
  (#set! role method))

; Functions
(function
  (function_statement name: (name) @name) @start
  (end_function_statement)? @end
  (#set! role function))

; Derived types
(derived_type_definition
  (derived_type_statement (type_name) @name) @start
  (end_type_statement)? @end
  (#set! role struct))
