// ## 5. Mixins, Abstract Classes, and Enum
// Write a program that:
// - **Defines an abstract class `Appliance` with:**
// - A method `turnOn()`.
// - An abstract method `operate()`.
// - **Creates a mixin `TimerFeature` that:**
// - Adds a method `setTimer(int minutes)` that prints "Timer set for $minutes minutes.".
// - **Defines an enum `ApplianceType` with values `WASHER`, `DRYER`, and `OVEN`.**
// - **Creates a class `Washer` that:**
// - Extends `Appliance`.
// - Mixes in `TimerFeature`.
// - Implements `operate()` to print "Washing clothes...".
// - **In `main()`, create an instance of `Washer`, turn it on, set a timer, and operate it.**

void main() {
  Washer washer = Washer();
  washer.turnOn();
  washer.setTimer(5);
  washer.operate();
}

abstract class Application {
  turnOn() {
    print("Turned On");
  }

  operate();
}

mixin TimerFeature {
  setTimer(int minutes) {
    print("Timer set for $minutes minutes.");
  }
}

class Washer extends Application with TimerFeature {
  @override
  operate() {
    print("Washing clothes...");
  }
}

enum ApplianceType { WASHER, DRYER, OVEN }
