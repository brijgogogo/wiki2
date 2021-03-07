# enums
An enum is a special value type that lets you specify a group of named numeric constants.

## flags enums
You can combine enum members. To prevent ambiguities, members of a combinable enum require explicity assigned values, typically in powers of two:

[Flags]
public enum BorderSides {
None = 0,
Left = 1,
Right = 2,
Top = 4,
Botom = 8
}

To work with combined enum values, you use bitwise operators such as | and &.

BorderSides leftRight = BorderSides.Left | BorderSides.Right;

if((leftRight & BorderSides.Left) != 0) {
  Console.WriteLine("includes left");
}

leftRight ^= BordeSides.Right;
Console.WriteLine(s); // Left

