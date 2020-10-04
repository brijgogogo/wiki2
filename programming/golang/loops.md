# loops

#
var i int
for i < 5 {
  println(i)
  i++
  if i == 3 {
    break
    // continue
  }
}

#  post clause
for i < 5; i++ {

}

# initializer
for i:= 0; i < 5; i++ {
}


# infinite loop
for {
}


# array/slice/maps

slice :[]int{1, 2, 3}
for i := 0; i < len(slice); i++ {
  println(slice[i])
}

for i, v := range slice {
  println(i, v)
}

ports := maps[string]int{"http": 80, "https": 443}
for k, v := range ports {
  println(k, v)
}

