/// The first principle of SOLID is the Single Responsibility Principle (SRP), which states:
/// A class should have one and only one reason to change, meaning that a class should have only one job.

class Result {
  checkResult(int rollno) {
    bool isRollnoValidate = Validate().isRollnovalidate();
    if (isRollnoValidate) {
      ResultModel resultModel = NetworkApi().searchResult();
      Printing().showResult(resultModel);
    } else {
      return "Invalid rollno";
    }
  }
}

class Validate {
  // this is responsible for validate
  isRollnovalidate() {
    return true;
  }
}

class ResultModel {}

class Printing {
  // this class is responsible for printing
  showResult(ResultModel model) {
    // show result in pleasant way
  }
}

class NetworkApi {
  // this class is responsible for fetching result
  searchResult() {
    return ResultModel();
  }
}
