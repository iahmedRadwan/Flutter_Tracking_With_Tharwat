// 5. OOP, Mixins, Inheritance, and Abstraction
// Create a small program that includes the following:
// - An abstract class `Animal` with:
// - A method `makeSound()` (abstract).
// - A concrete method `describe()` that prints "I am an animal.".
// - A class `Dog` that:
// - Inherits from `Animal`.
// - Implements the `makeSound()` method to print "Bark!".
// - A mixin `RunFast` that:
// - Adds a method `run()` that prints "I run fast!".
// - A class `Greyhound` that:
// - Extends `Dog`.
// - Mixes in `RunFast`.
// In the `main()` function:
// - Create an instance of `Greyhound`.
// - Call `makeSound()`, `describe()`, and `run()` on the instance.
// Goal: Combine OOP principles like inheritance, mixins, and abstraction.

void main() {
  Greyhound greyhound = Greyhound();
  greyhound.makeSound();
  greyhound.describe();
  greyhound.run();
}

abstract class Animal {
  makeSound();
  void describe() {
    print("I'm animal");
  }
}

class Dog extends Animal {
  @override
  makeSound() {
    print("Bark");
  }
}

mixin RunFast {
  run() {
    print("I run fast!");
  }
}

class Greyhound extends Dog with RunFast {}
