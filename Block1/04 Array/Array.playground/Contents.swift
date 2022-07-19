//What is Array

let city = "Kyiv"
var citiesOfUkraine = ["Sumy", "Lviv", "Dnipro", city]

//empty array
let emptyArray1 = [""]
let emptyArray2 = [String()]
let emptyArray3: [String] = []
let emptyArray4: Array<String> = []
let emptyArray5: Array<String>
emptyArray5 = []

// Access array elements
print(citiesOfUkraine[0])
print(citiesOfUkraine.last)
print(citiesOfUkraine.first)

//"Add" and "insert" elements to array
citiesOfUkraine.append("Kharkiv")
citiesOfUkraine.insert("Odessa", at: 0)

//Add one array to another
var citiesOfUSA = ["NY", "LA", "SF"]
let allCities = citiesOfUkraine + citiesOfUSA
citiesOfUkraine.append(contentsOf: citiesOfUSA)

//Remove elements
citiesOfUSA.remove(at: 0)

//.count, .isEmpty
print(citiesOfUSA.count)
citiesOfUSA.removeAll()
print(citiesOfUSA.isEmpty)

//Arrays with Any types
let arrayOfAll: [Any] = ["Bob", 12, true, 125.5]

//Practice
var studentName = ["Ruslan", "Bogdan", "Eugene", "Solomia", "Arsen"]

let newStudent1 = "Denis"
let newStudent2 = "Atnonio"

studentName.append(newStudent1)
studentName.insert(newStudent2, at: 0)

let index = studentName.count

studentName.remove(at: index - 2)
studentName.remove(at: 0)

let newStudentName = ["Valeria", "Roman"]
var group = studentName + newStudentName
print("The first student is \(group.first), Last student is \(group.last)")
print("The second student is \(group[1]), Third student is \(group[2]) ")

print("In array we have \(group.count) elements")
print("Is array empty: \(group.isEmpty)")

let newGroup = group
group.removeAll()
