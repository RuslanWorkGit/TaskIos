import UIKit

// Маски для параметрів функції

//func sum(val1: Int, val2: Int) -> Int{
//    let result = val1 + val2
//    return result
//}
//
//sum(val1: 123, val2: 123)

//func summ(_ val1: Int, _ val2: Int) -> Int{
//    let result = val1 + val2
//    return result
//}
//
//summ(123, 123)

// Дефолтні параметри

func mult(val1: Int, val2: Int = 10) -> Int{
    let result = val1 * val2
    return result
}

mult(val1: 12, val2: 12)
mult(val1: 12)


// Рекурсія
//func doSomthing() {
//    doSomthing()
//}
//
//doSomthing()

//Замикання

func doIt(newClouser: (String) -> ()) {
    newClouser("Hey!")
}

doIt(newClouser: { someValue in
    print(someValue)
})

// Practice

func personalInfo(_ name: String, profession: String =  "buisnesman", vacation: Int = 0) {
    print("My name is \(name), my profession is \(profession), I have \(vacation) days for vacation")
}

personalInfo("Ruslan", profession: "Student", vacation: 60)
personalInfo("Andrew")
personalInfo("Alex", profession: "Sportsman")

//-----------------------

func summ(val1: String, val2: String) {
    print(val1 + val2)
}

func summ(val1: Float, val2: Float) {
    print(val1 + val2)
}

func summ(val1: Int, val2: Int) {
    print(val1 + val2)
}

summ(val1: "Ruslan", val2: "Lyulka")
summ(val1: 12.023, val2: 156.22)
summ(val1: 1, val2: 6)

//-------------------

//func somePow(myValue: Double, powNumber: Double) -> Double{
//    return pow(myValue, powNumber)
//}
//
//let myNumber = somePow(myValue: 7, powNumber: 2)

func persInfo(name: String = "Bob", clouser: (String) -> ()) {
    clouser(name)
}

persInfo(name: "Ruslan", clouser: {personalName in
    print(personalName)
})

persInfo(clouser: {personalName in
    print(personalName)
})

//Рекурсія
//----------------------Факторіал---------------------
func factorial(number: Int) -> Int{
    if number == 1 {
        return number
    }
    
    return factorial(number: number - 1) * number
}

let fiveFactorial = factorial(number: 5)

//--------------------Число от 1 до n-----------------
func recurtion1(_ n: Int) -> String{
    if n == 1{
        return "1"
    }
    return String(recurtion1(n - 1) + " " + "\(n)")
}

recurtion1(5)
//------------Фібоначі-------------
func fib(num: Int) -> Int {
    guard num > 1  else {return num}
    return fib(num: num - 1) + fib(num: num - 2)
}

fib(num: 3)

//------------Факторіал------------
func factorial(_ number: Int) -> Int{
    if number == 1{
        return 1
    } else {
        let k = number * factorial(number - 1)
        print(k)
        return k
    }
}

factorial(5)

//----------------від А до B---------------
func recurtion2(_ num1: Int,_  num2: Int) -> String{
    if num1 >= num2{
        if num1 == num2 {
            return String(num1)
        }
        
        return String(num1) + " " + recurtion2(num1 - 1, num2)
    } else {
        if num1 == num2 {
            return String(num1)
        }
        return String(num2) + " " + recurtion2(num1, num2 - 1)
    }
}

recurtion2(10, 15)
recurtion2(22, 10)

//------------Функція Акермана--------------
func accerman(_ m: Int, _ n: Int) -> Int{
    if m == 0 {
        return n + 1
    } else if m > 0 && n == 0 {
        return accerman(m - 1, 1)
    } else {
        return accerman(m - 1, accerman(m, n - 1))
    }
}

accerman(3, 2)

//-----------------Точна степінь двійки------------
func powOfTwo(n: Int) -> Int{
    if n == 1 {
        return 1
    } else if n > 1 && n < 2 {
        return 0
    } else {
        return powOfTwo(n: n/2)
    }
}

let n = 5

if powOfTwo(n: n) == 1{
    print("Yes")
} else {
    print("No")
}
