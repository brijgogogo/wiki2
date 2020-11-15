# Encapsulation

Hiding data in one part of a program from code in another part is known as encapsulation.
- used to protect against invalid data
- change encaplusated code without breaking other code


Carried out via unexported variables, struct fields, funcitons or methods.

## Setter methods

  func (d *Date) SetYear(year int) error {
          if year < 1 {
                  return errors.New("invalid year")
          }
          d.year = year
          return nil
  }

## Getter methods

  func (d *Date) Year() int {
          return d.year
  }


