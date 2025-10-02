; Comments
(comment) @comment

; Strings and literals
(string_literal) @string
(number_literal) @value.number
(boolean_literal) @value.boolean

; Types
[
 (intrinsic_type)
 "allocatable"
 "dimension"
 "intent"
 "optional"
 "pointer"
 "type"
 "class"
] @identifier.type

; Keywords - Functions
[
 "end"
 "endfunction"
 "endprogram"
 "endsubroutine"
 "function"
 "procedure"
 "subroutine"
] @keyword

; Keywords - General
[
 (default)
 (procedure_qualifier)
 "abstract"
 "bind"
 "call"
 "contains"
 "continue"
 "cycle"
 "endenum"
 "endinterface"
 "endmodule"
 "endprocedure"
 "endprogram"
 "endsubmodule"
 "enum"
 "enumerator"
 "equivalence"
 "exit"
 "extends"
 "format"
 "goto"
 "implicit"
 "include"
 "interface"
 "intrinsic"
 "module"
 "namelist"
 "only"
 "parameter"
 "print"
 "private"
 "public"
 "program"
 "read"
 "stop"
 "submodule"
 "use"
 "write"
] @keyword

; Return keyword
"return" @keyword

; Conditionals
[
 "else"
 "elseif"
 "elsewhere"
 "endif"
 "endwhere"
 "if"
 "then"
 "where"
] @keyword

; Loops
[
 "do"
 "enddo"
 "forall"
 "while"
] @keyword

; Operators
[
 "*"
 "**"
 "+"
 "-"
 "/"
 "="
 "<"
 ">"
 "<="
 ">="
 "=="
 "/="
] @operator

; Logical operators
[
 "\\.and\\."
 "\\.or\\."
 "\\.not\\."
 "\\.lt\\."
 "\\.gt\\."
 "\\.ge\\."
 "\\.le\\."
 "\\.eq\\."
 "\\.ne\\."
 "\\.eqv\\."
 "\\.neqv\\."
] @operator

; Brackets
[
 "("
 ")"
 "["
 "]"
] @bracket

; Delimiters
[
 "::"
 ","
 "%"
 ":"
] @operator

; Function and subroutine definitions
(function_statement
  (name) @identifier.function)

(subroutine_statement
  (name) @identifier.method)

(module_procedure_statement
  (name) @identifier.function)

; End statements
(end_function_statement
  (name) @identifier.function)

(end_subroutine_statement
  (name) @identifier.method)

(end_module_procedure_statement
  (name) @identifier.function)

; Program and module names
(program_statement
  (name) @identifier.type)

(module_statement
  (name) @identifier.type)

(submodule_statement
  (module_name) (name) @identifier.type)

(end_program_statement
  (name) @identifier.type)

(end_module_statement
  (name) @identifier.type)

(end_submodule_statement
  (name) @identifier.type)

; Subroutine calls (always highlighted - these use CALL keyword)
(subroutine_call
  (identifier) @identifier.function)

; Function calls (but not array subscripts on left side of assignment)
; Note: We can't distinguish function calls from array access on the right side
; of assignments or in expressions, so we don't highlight call_expression at all
; to avoid incorrectly highlighting array subscripts

; Parameters
(parameters
  (identifier) @identifier.argument)

; Type members
(derived_type_member_expression
  (type_member) @identifier.property)

; Variables
(identifier) @identifier
