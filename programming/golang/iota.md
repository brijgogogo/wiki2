## iota / enumeration

Go doesn't have enumeration. It has `iota` which lets you assign an increasing value to a set of constants.
```go
type Color int // define a type based on int
const (        // use a const block to define a set of values for your type
  None Color = iota  // first constant has the type specified and value set to iota
  Red                // every subsequent line has neither the type or a value
  Green              // Go compiler repeats the type and assigns an incremented value of iota on each line
  Blue
)
// Go compiler assigns None = 0, Red = 1, so on.
// When a new const block is created, iota is set back to 0.
// Tip: if values matter, assign them explicitly. Use iota if values don't matter.
// Iota starts from 0. If there isn't a default value for your constants, assign first iota value to _ or to a constant that indicates the value is invalid.

```


