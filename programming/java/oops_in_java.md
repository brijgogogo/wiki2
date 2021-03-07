# oops in java

* Encapsulation
Wrap data and method in a unit (unit).
Also known as data-hiding.
We protect some data using access modifiers like private so that user cannot access it.
Also helps in organizing data.

* Inheritance
One class acquires the methods and fields of another.
Minimizes duplication of code.

In Java, evey object inherits from `Object` class implicitly.


public class Spider extends Insect {
  boolean isPoisonous;

  public Spider(int age, boolean isPosonous) {
    super(age, 8); // call base constructor using `super`
    this.isPoisonous = isPoisonous;
  }

  // method can be overridden
  public void says() {

  }
}

