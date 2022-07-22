import UIKit

//Створити журнал для вчителя, який буде приймати імʼя студента, професію та оцінку і записувати все це в масив. Занесіть туди 10 студентів туда і роздрукуйте через цикл for.
var teacherNotes: [(name: String, profession: String, mark: Int)] = []

func teacherBook(name: String, profession: String, mark: Int) -> [(String, String, Int)] {
    //var teacherNotes: [(String, String, Int)] = []
    teacherNotes += [(name, profession, mark)]
    return teacherNotes
}

teacherBook(name: "Ruslan", profession: "Computer Sciense", mark: 10)
teacherBook(name: "Alex", profession: "Engein master", mark: 12)
teacherBook(name: "Bogdan", profession: "Medecin", mark: 9)
teacherBook(name: "Eugene", profession: "Coputer master", mark: 11)
teacherBook(name: "Arsen", profession: "Coputer gamer", mark: 8)
teacherBook(name: "Roman", profession: "Embeden user", mark: 9)
teacherBook(name: "Antonio", profession: "Power plant", mark: 7)
teacherBook(name: "Andrew", profession: "Java User", mark: 11)
teacherBook(name: "Denis", profession: "Tank", mark: 11)
teacherBook(name: "Unnown", profession: "Unnown", mark: 0)

//print(teacherNotes)

for i in teacherNotes{
    print("The student \(i.name) has proffesion \(i.profession) and mark is \(i.mark)")
}
