# Primitives

Fjml is mostly a declarative language.

This means that we mostly _declare_ stuff but we do not _operate_ on it.

```fjml
// This is a comment.

// I did not find it useful to implement multi-line comments.


// DECLARATIONS


// This is a declaration of a number
a: Num 123 
// Syntax:
// NAME : TYPE [VALUE]

// No value -> defaults to 0
b: Num

// Other formats
c: Num 3.1415e-10 // Floating-point
d: Num 0b00101001 // binary
e: Num 0xDEADBEEF // hexadecimal

// Beware!
f: Num -1  // OK
g: Num - 1 // Error!

// This is a declaration of a string
str_a: Str "Hello, world!"

// Defaults to "", empty string
str_b: Str

str_c: Str "Strings
can
span
many
lines"

str_d: Str 'You can use single quotes'

str_e: Str `You can use backticks`

str_f: Str '
    You can insert special sequences that
    will be replaced with corresponding characters:
    \n -- line return
    \' -- single quote
    \" -- double quote
    \u1234 -- Unicode character 0x1234
    \U12345678 -- Unicode character 0x12345678
    \\ -- back slash
    \/ -- forward slash
    \0 -- does not insert any characters
    Other characters prefixed by \ are inserted as-is:
    \a\b\c -> abc
'

// The \0 sequence is funny. I thought it can be useful...
str_g: Str "\0\0\0\0\0\0\0\0\0\0" // This string is empty!

// Strings with backticks do NOT replace \-sequences
str_h: Str `\n\n\n` // -> "\\n\\n\\n"


// COLORS

// #RRGGBB
p_a: Color #f97801 // Hex number
// #RGB
p_b: Color #123 // -> #112233
// #X, gray colors
p_c: Color #8 // -> #888888

// With alpha channels:
// #AARRGGBB
p_d: Color #10f97801
// # ARGB
p_e: Color #1234 // ->  #11223344
// #AX
p_f: Color #12 // -> #11222222

// Color names
p_g: Color ##red
p_h: Color ##lightseablue


// SPECIFICATIONS


// You may sometimes want to modify
// the things you declared previously.
// This can be done by _specification_
// of the declared values

a: Num 123

.a 321 // Now a is 321
// Syntax:
// . NAME VALUE

// You cannot change the type in specifications
b: Str "123"
.b 123 // -> ERROR
```