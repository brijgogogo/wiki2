# Embedded Types

Types can contain other types. The embedded type is anonymous, you don't give it a name.
You refer to it via the name of its type.

type Discount struct {
  precent float32
  promotionId string
}

type ManagersSpecial struct { // enclosing type
  Discount     // embedded type
  extraoff float32
}

januarySale := Discount{15.0, "January"}
managerSpecial := ManagersSpecial{januarySale, 10.00}
managerSpecial.Discount.percent = 5.2
managerSpecial.percent  = 5.2 // promoted field
managerSpecial.Discount.someMethod(someParameter)

- methods get promoted just like fields. Such methods can be called on enclosing types.

## Also see Embedded struts in [structs](structs.md)
