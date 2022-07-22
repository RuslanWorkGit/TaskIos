import UIKit

//Створити функцію яка приймає імʼя та прізвище, потім кладе це в масив і виводить результат в консоль

var personList: [(name: String, surname: String)] = []
func representation(name: String, surname: String) {
    print("The person name is \(name) and surname is \(surname)")
    personList += [(name, surname)]
}

representation(name: "Ruslan", surname: "Lyulka")
representation(name: "ALex", surname: "Scutorenko")
representation(name: "Jhon", surname: "Weak")

print(personList)
for i in personList {
    print("Name: \(i.name)\t Surname: \(i.surname)")
}
