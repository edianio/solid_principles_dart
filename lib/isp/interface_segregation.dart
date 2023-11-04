/// Fourth Principle of SOLID Principle
/// Interface Segregation Principle
/// This principle states that no client should be forced to depend on methods it does not use.

abstract class OfflineResult {
  checkResult();
}

abstract class CodingResult {
  codingTestResult();
}

class MechanicalBranch implements OfflineResult {
  @override
  checkResult() {
    //  some code
  }
}

class ComputerScienceBranch implements OfflineResult, CodingResult {
  @override
  checkResult() {
    // somecode
  }

  @override
  codingTestResult() {
    // somecode
  }
}
