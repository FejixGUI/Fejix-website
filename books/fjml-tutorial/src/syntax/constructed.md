# Constructed types

The most useful enities are objects and types.

Objects are sets of primitives and other objects. The inner entities are called _properties_ because they belong to the toplevel objects.

Every object must have a _type_, so to create an object we first have to declare a type.

Type defines what properties an instance (object of that type) initially has. Such properties are called _fields_.

```fjml
// Type 'MyType' has two fields: x and y
MyType: type
    x: Num    // Indented!
    y: Str

// Notice the indentation of the `x` declaration.
// Like in Python, indented statements form blocks.

// In Fjml blocks can also be defined with braces:
MyType: type
{
    x: Num; // Mandatory ;
    y: Str; // The last ; is not mandatory
}

// Spaces inside {}[]() are completely ignored

MyType: type { 
    x: Num; y: Str
}

// Indented blocks are preferred but you can use 
// any style you like.
// The only problem is that you cannot use indented
// blocks inside embraced blocks

// Let's declare an object
my_object: MyType

// As I said, objects have properties.
// We can specify them in the following way:
.my_object
    .x 123
    .y "Hello"

    // Also we can define additional properties
    // that are not defined in type.
    z: Color ##orange

// Let's specify the my_object's own property:
.my_object {
    .z ##yellow
}
// Quite long for a single color, don't you think?
// I recommend a shorter form:
.my_object .z ##yellow

// If a block has a single statement, you don't have
// to write the whole block.
// This is especially useful when the path to the property is long
.some_object.its_property.another_thing.other.some_property 1024


// Types do not have to have fields
Empty: type

my_empty_object: Empty
// has no properties by default

// ... so they are useful only for defining
// custom properties: 
.my_empty_object some_new_property: Num
```