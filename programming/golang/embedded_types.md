# Embedded Types

Types can contain other types. The embedded type is anonymous, you don't give it a name. You refer to it via the name of its type.

type Discount struct {
  precent float32
  promotionId string
}

type ManagersSpecial struct {
  Discount     // embedded type
  extraoff float32
}

januarySale := Discount{15.0, "January"}
managerSpecial := ManagersSpecial{januarySale, 10.00}
managerSpecial.Discount.percent
managerSpecial.Discount.someMethod(someParameter)

