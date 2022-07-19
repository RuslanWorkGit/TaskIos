import UIKit

//формат написання функцій

func printStars() {
    print("*")
    print("*")
}

//print("1")
////print("*")
//printStars()
//print("2")

func one() {
    print("1")
}

func two() {
    print("2")
}

//one()
//two()

//Функції з параметрами
func printMyAdres(country: String, city: String) {
    print("I live in \(country), \(city)")
}

//printMyAdres(country: "Ukraine", city: "Kyiv")

//Функції повертають значення

func mult(num1: Int, num2: Int) -> Int{
    let result = num1 * num2
    return result
}

let mult1 = mult(num1: 12, num2: 12)

//Practice

func printName(name: String, surname: String) -> String {
    let nameAndSurname = name + " " + surname
    print("\(name) \(surname)")
    
    return nameAndSurname
}

let myName = printName(name: "Ruslan", surname: "Lyulka")

func sqrtNumber(number: Double) -> Double {
    return sqrt(number)
}

let mySqrt = sqrtNumber(number: 169)

func powTwo(number: Double) -> Double{
    return pow(number, 2)
}

let myPow = powTwo(number: 3)

func summ(num1: Double, num2: Double) -> Int{
    let mySqrt = sqrtNumber(number: num1)
    let myPow = powTwo(number: num2)
    
    return Int(myPow) + Int(mySqrt)
}

let mySumm = summ(num1: 144, num2: 3)

for first in 1...10{
    for second in 1...10{
        print(summ(num1: Double(first), num2: Double(second)))
    }
}
