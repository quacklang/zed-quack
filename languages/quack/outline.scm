(function_declaration
  "func" @context
  name: (identifier) @name) @item

(method_declaration
  "func" @context
  name: (identifier) @name) @item

(struct_declaration
  "struct" @context
  name: (type_identifier) @name) @item

(enum_declaration
  "enum" @context
  name: (type_identifier) @name) @item

(interface_declaration
  "interface" @context
  name: (type_identifier) @name) @item

(on_declaration
  "on" @context
  type: (_) @name) @item

(test_declaration
  "test" @context
  name: (string_literal) @name) @item
