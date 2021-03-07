# anonymous types
* simple class created by the compiler on the fly to store a set of values

var dude = new { Name = "Bob", Age = 23 };

* you must use the var keyword to reference an anonymous type.

* property name can be inferred form an expression that is itself an identifier

## array of anonymous types
var dudes = new[]
{
  new { Name = "Bob", Age = 30 },
  new { Name = "Bob", Age = 30 }
};


