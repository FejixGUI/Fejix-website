# Annotations

Fjml currently has only one keyword - `type` and we do not need more.

How is that possible? - you may ask. We have annotations!

Annotations are pieces of information that can be attached to structures.

```fjml
@my_pretty_annotation
some_number: Num -1234
// some_number is annotated


// We put annotations on separate lines
// just for readability. But it is not necessary:
@anno1 @anno2 @anno3 something: Str

// Annotations can have arguments:
@annotation_with_arguments(1, "Str", ##teal)
some_number: Num -1234

// Annotations can include spaces and line breaks
@ my_nice_annotations (
    1,
    2,
    'three', // <- the last , is OK but not mandatory
)
x: Num

// We can annotate almost any values except
// when they are parts of expressions

@annotate_specification
.a 123

@annotate_block {
    // ...
}

my_num: Num  @annotate_value 123

@annotate_type
SomeType: type
    @annotate_field
    some_field: SomeOtherType

@annotate_this
.object
    @annotate_that
    .sub_object
        @and_also_this
        .property  @and_of_cource_its_value 3

// BUT the following code is ILLEGAL
my_number: @anno Num // <- Num is a part of expression



// BUILT-IN ANNOTATIONS

// Some annotations can help us make our code
// much more powerful

// ------------ @FINAL --------------
@final x: Num 3.14159265
// x is *final* and cannot be modified
.x 3 // <- ERROR
// This makes some things safer

// ------------ @DERIVE -------------
// @derive allows type inheritence

A: type
    x: Num 123

@derive(A)
B: type
    y: Str "Hello!"

b: B // Has 'x' and 'y'

// You can derive multiple types:
// @derive(A, B, C)

// ------------- @CLASS -------------
// @class sets type classes which prevent
// types of different classes to be derived together

@class('my.class.A')
A: type

@class('my.class.B')
B: type

@derive(A, B) // <- ERROR
C: type

// This is how to give a name to your class:
// ORGANISATION.PROJECT.FILE.CLASS
// Example:
// fejix.stdlib.core.window
// This ensures that class names do not collide

```