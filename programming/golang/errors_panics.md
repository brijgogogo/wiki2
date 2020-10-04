# Errors
error type is a built-in interface

type error interface {
  Error() string
}


func demo() error {
  // return nil
  return errors.New("issue")
}




## panics
panic("bad error")



## sources
https://golang.org/ref/spec#Errors

