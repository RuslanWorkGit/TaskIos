import UIKit

let animals = ["Cat", "Dog", "Elephant", "Tiger", "Horse", "Mouse", "Wolf"]

//цикл по діапазану
for _ in 1...3 {
    //print("Hello")
}

// цикл по масиву
//for animal in animals{
//    print(animal.count)
//}

// перевірка для елементу
for animal in animals where animal.count > 4{
//    print(animal)
}

// доступ до індекса
for (index, animal) in animals.enumerated(){
//    print(index)
//    print(animal)
}

//break and countinue

for index in 1...10{
    if index == 5{
        continue
    }
    //print(index)
}

//while

var sum = 0
while sum < 100 {
    sum += 10
    //print(sum)
}

//Practice

let weekDays = ["Monday", "Tuesday", "Wensday", "Thusday", "Friday", "Satuday", "Sunday"]

for (index, day) in weekDays.enumerated() where index < 3{
    print(index, day)
}

for (index, day) in weekDays.enumerated() {
    if index < 3 {
       // print(index, day)
    }
}
print("-----------------------Second----------------------")
let friendAge = [20, 21, 21, 15, 18, 19, 25, 32, 22, 20, 17]

for i in friendAge{
    print("I am \(i) years old")
}

print("-----------------------Third----------------------")
for i in friendAge {
    if i >= 18 {
        print("Adult")
    } else {
        var age = 0
        while age < i{
            age += 1
            print("I celebrate \(age) years")
        }
    }
}


