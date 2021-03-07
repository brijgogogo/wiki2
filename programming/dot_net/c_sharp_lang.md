# constants
* a static field whose value can never change.
* evaluated statically at compile time and the compiler substitutes its value whenever used.
* can be numeric types, boo, char, string or enum
* can also be declared local to a method

# static class
* must be composed solely of static members
* cannot be subclassed

# finalizers
class Class1
{
  ~Class1() {

  }
}

Syntanx for overriding Object's Finalize method.

# partial methods
* consists fo definition and implementation.
* must be void and are implicitly private
* if an implementation is not provided, the definition of the partial method is compiled away (as is the code that calls it).

partial void ValidatePayment(decimal amount);

partial void ValidatePayment(decimal amount) {
  if(amount > 100) {
  ....
  }
}


# Object class
public class Object
{
  public Object();
  public extern Type GetType();
  public virtual bool Equals(object obj);
  public static bool Equals(object objA, object objB);
  public static bool ReferenceEquals(object objA, object objB);
  public virtual int GetHashCode();
  public virtual string ToString();
  protected virtual void Finalize();
  protected extern object MemberwiseClose();
}

