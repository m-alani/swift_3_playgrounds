import Foundation

struct Experiment {
  var myString: String
  var myInteger: Int?
  var myBoolean: Bool

  init(myString: String, myInteger: Int? = nil, myBoolean: Bool = false) {
    self.myString = myString
    self.myInteger = myInteger
    self.myBoolean = myBoolean
  }
}

_ = Experiment(myString: "Hello World", myInteger: 32)
