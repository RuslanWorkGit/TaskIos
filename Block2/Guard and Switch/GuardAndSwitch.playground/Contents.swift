import UIKit

//guard else

func whatAge(age: Int) {
    guard age > 18 else {
        print("kid")
        return
    }
    print("Adult")
}

whatAge(age: 11)

//тернарний оператор
var score = 200
var highScore = 210

let message = score > highScore ? "New record" : "You lose"

//switch case

let age = 22

switch age {
case 14: print("Can't drive")
case 28: print("Can drive")
default: print("?")
}

//Switch case range

switch age{
case 0...16: print("Can't drive")
case 17...69: print("Can drive")
case 70...100: print("Can't drive")
default: print("?")
}

//Switch case fallthrough / where
let isCarOwner = true
switch age{
case 0...16: print("Can't drive")
case 17...69 where isCarOwner: print("Can drive")
case 70...100: print("Can't drive")
default: print("?")
}

//Practice

let myScore = 64
let passScore = 65

switch myScore {
case myScore where myScore > passScore: print("Congratulation you are winner")
case myScore where myScore < passScore: print("Sorry, try again")
default: print("?")
}

func scoreGuard(myScore: Int, passScore: Int) {
    guard myScore < passScore else {
        print("You are winner")
        return
    }
    print("Sorry, try again")
}

scoreGuard(myScore: myScore, passScore: passScore)


let weekDay = 4
let myBirthday  = true

switch weekDay {
case 1: print("Monday")
case 2: print("Tuesday")
case 3: print("Wednesday")
case 4: print("Thusday")
    fallthrough
case 5: print("Friday")
case 6 where myBirthday: print("Satuday")
case 7: print("Sunday")
default: print("I don't know")
}
