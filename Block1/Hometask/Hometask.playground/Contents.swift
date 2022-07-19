import UIKit
import Foundation

//Task 1

var randomNumber = [20, -11, -23, 24, 7, -5, -1, 22, -99, 13]
for (index, number) in randomNumber.enumerated() {
    if number < 0 {
        randomNumber[index] = 0
    }
}
//print(randomNumber)  // ------ Need Uncoment

//Task 2
    
//print(randomNumber.max()) // ------ Need Uncoment
//print(randomNumber.min()) // ------ Need Uncoment

var maxNumber = 0
var minNumber = 0

for i in randomNumber{
    if i > maxNumber {
        maxNumber = i
    } else if minNumber > i {
        minNumber = i
    }
}
//print(maxNumber)  // ------ Need Uncoment
//print(minNumber)  // ------ Need Uncoment

//Task 3

var sum = 0
for number in randomNumber{
   sum += number
}
//print("Sum of element is \(sum)")  // ------ Need Uncoment

//Task 4

let monthsArray = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "Dcember"]
var monthsDict: [Int : String] = [:]

for (index, name) in monthsArray.enumerated() {
    monthsDict[index + 1] = name
}
//print(monthsDict) // ------ Need Uncoment

//Task 5

var dictionary = ["first" : 1, "second" : 2, "third" : 3, "fourth" : 4]

var first = dictionary["first"]
dictionary["first"] = dictionary["fourth"]
dictionary["fourth"] = first
//print(dictionary)  // ------ Need Uncoment

//Task 6

var calendar: [Int : [String]] = [:]

for date in 1970...2022 {
    calendar[date] = monthsArray
}
//print(calendar) // ------ Need Uncoment

//Task 7

for (key, value) in calendar {
    calendar[key] = value + ["Ruslan"]
}

//print(calendar)  // ------ Need Uncoment

//Task 7.1

var array: [Int] = []
for i in 1...31 {
    array += [i]
}
//print(array)

typealias calPro = [[String] : [Int]]
var calendarPro: [Int : calPro] = [ : ]

for (index, value) in calendar {
    calendarPro[index] = [calendar[index]! : array]
}

for (index, value) in calendarPro {
    if index == 2019 {
        //print("2019 \t")
        for (index1, value1) in value{
            if index1.contains("September") && value1.contains(1){
                //print("\(value1[1 - 1]) \(index1[9 - 1]) \(index)") // ------ Need Uncoment
            }
        }
    }
}

//Task 8

let a = 8
let b = 7 // ------ Need Change to 8 or 6

if a == b {
    let mult = (a + b) * 3
    print("The mult of number \(a) and \(b) is \(mult)")
} else if (a + b) % 2 == 0 {
    let sum = a + b
    print("The sum of number \(a) and \(b) is \(sum)")
}

// Task 9

var phrase = "Hello my name is Ruslan!"
var phraseArr = phrase.components(separatedBy: " ")

//------------------First-------------------
for (index, word) in phraseArr.enumerated() {
    if index == 0 || index == phraseArr.count - 1{
        var newWord: String = ""
        for letter in word {
            if letter == "!"{
                continue
            } else {
                newWord += String(letter)
            }
        }
        //print(newWord) // ------ Need Uncoment
    }
}

//----------------Second---------------------
for (index, var word) in phraseArr.enumerated() {
    if index == 0 || index == phraseArr.count - 1{
        if word.suffix(1) == "!"{
            word.removeLast()
            //print(word) // ------ Need Uncoment
        } else {
            //print(word) // ------ Need Uncoment
        }
    }
}
