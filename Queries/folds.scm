; Program blocks
(program
  (program_statement) @start
  (end_program_statement) @end
  (#set! role block))

; Module blocks
(module
  (module_statement) @start
  (end_module_statement) @end
  (#set! role block))

; Submodule blocks
(submodule
  (submodule_statement) @start
  (end_submodule_statement) @end
  (#set! role block))

; Subroutine blocks
(subroutine
  (subroutine_statement) @start
  (end_subroutine_statement) @end
  (#set! role function))

; Function blocks
(function
  (function_statement) @start
  (end_function_statement) @end
  (#set! role function))

; Interface blocks
(interface
  (interface_statement) @start
  (end_interface_statement) @end
  (#set! role block))

; Derived type blocks
(derived_type_definition
  (derived_type_statement) @start
  (end_type_statement) @end
  (#set! role struct))

; Do loop blocks
(do_loop_statement
  . @start
  (end_do_statement) @end
  (#set! role block))

; If blocks
(if_statement
  . @start
  (end_if_statement) @end
  (#set! role block))

; Select case blocks
(select_case_statement
  . @start
  (end_select_statement) @end
  (#set! role block))

; Where blocks
(where_statement
  . @start
  (end_where_statement) @end
  (#set! role block))
