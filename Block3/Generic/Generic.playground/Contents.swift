import UIKit

func wrap<T>(val1: T, val2: T) -> [T]{
    return [val1, val2]
}

wrap(val1: "String", val2: "New")

//Приклад Generic функції з декількома типами

func wrapDict<T, D>(key: T, value: D) -> [T : D] {
    // [key : value]  //-- можна використовувати без return якщо маємо 1 строку
    let result: Dictionary = [key : value]
    return result //[key : value]
}

// Generic параматри, які відповідають протоколу

func isEqual<T: Comparable & Flyable>(val1: T, val2: T) -> Bool {
    val1.fly()
    return val1 == val2
}

protocol Flyable {
    func fly()
}

//Приклад Generic типу

struct Storage<Element> {
    var allElements: [Element] = []
    
    mutating func addElement(element: Element){ //-- mutaiting дозволяє міняти значення в структурі
        allElements.append(element)
    }
}

var storage = Storage<Int>()
storage.addElement(element: 10)
storage.addElement(element: 12)
storage.addElement(element: 9)
print(storage.allElements)

//Розширення Generic типу

extension Storage {
    func getFirst() -> Element?{
        allElements.first
    }
}

print(storage.getFirst()!)

//----------Practice-----------
//-----First-----

func swap<El>(val1: inout El, val2: inout El) {
    let val3 = val1
    val1 = val2
    val2 = val3
}

var new1 = 10
var new2 = 1

swap(val1: &new1, val2: &new2)

new2
new1

//-----Second-----

func typleReturn<MyType> (first: MyType, second: MyType) -> (MyType, MyType){
    (first, second)
}

typleReturn(first: "New one", second: "Second")

//Third
func addGeneric<Val: AdditiveArithmetic>(val1: Val, val2: Val) -> Val{
    val1 + val2
}

addGeneric(val1: 10, val2: 21.1)

//Fourth

struct Dict<Dicti : Hashable> {
    var allElemets: [Dicti : Dicti] = [:]
    
    mutating func addElemets(key: Dicti, value: Dicti) {
        allElemets[key] = value
    }
    
    func printEl(keyFound: Dicti){
        let myEl = allElemets[keyFound]
        if myEl != nil {
            print(myEl!)
        } else {
            print("No key like that")
        }
    }
    
}

var myDict = Dict<String>()

myDict.addElemets(key: "Ruslan", value: "Lyulka")
myDict.addElemets(key: "User", value: "User1")
myDict.addElemets(key: "Boris", value: "Jonson")

myDict.printEl(keyFound: "Ruslan")
