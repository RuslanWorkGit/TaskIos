import UIKit

var test: String? = nil
test = "Some value"
//Forced Unwrap

//print(test!)

//Safe unwraped
let new = test ?? ""
print(new)

if let test = test {
    print(test)
}

func unwrap() {
    guard let test = test else{
        return
    }
    
    print(test)
}

unwrap()

//-------Practice-------

let first: String? = "Who are you?"
let second: Int? = 10
let third: Float? = 12.22
let fourth: Bool? = nil

//--------1-------
let firstUnwrap = first ?? ""
print(firstUnwrap)
let secondUnwrap = second ?? 0
print(secondUnwrap)
let thirdUnwrap = third ?? 0.0
print(thirdUnwrap)
let fourthUnwrap = fourth ?? true
print(fourthUnwrap)

//-------2------
if let first = first {
    print(first)
}

if let second = second {
    print(second)
}

if let third = third {
    print(third)
}

if let fourth = fourth {
    print(fourth)
}

//--------3--------

func myUnwrap(param: Any?) {
    guard let newOne = param else {
        return
    }
    print(newOne)
}

myUnwrap(param: first)
myUnwrap(param: second)
myUnwrap(param: third)
myUnwrap(param: fourth)

//-------Second Task--------

class classB {
    let text: String
    
    init(info: String) {
        text = info
    }
    
    convenience init() {
        self.init(info: " ")
    }
}

class classA {
    var new: classB?
    
    init(param: classB?){
        new = param
    }
}

let clasB = classB(info: "My text")

var clasA = classA(param: clasB)

print(clasA.new?.text)

//-------1-------
let myText1 = clasA.new?.text ?? ""
print(myText1)

//--------2-------
if let myText2 = clasA.new?.text {
    print(myText2)
}

//--------3-------
myUnwrap(param: clasA.new?.text)
