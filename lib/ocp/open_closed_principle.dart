/// The second principle of SOLID is the Open-Closed Principle.
/// This principle states that software entities (classes, modules, functions, etc.)
/// should be open for extension, but closed for modification.

abstract class Result {
  checkResult();
}

class ComputerScience implements Result {
  @override
  checkResult() {
    // some code
  }
}

class Civil implements Result {
  @override
  checkResult() {
    // some code
  }
}

class Mechanical implements Result {
  @override
  checkResult() {
    // some code
  }
}