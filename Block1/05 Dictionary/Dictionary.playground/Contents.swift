//Dictionary
var phoneBook = ["Alice" : 111, "Ruslan" : 123]
print(phoneBook)

//empty dictionary
let myDict1 = ["" : 0]
let myDict2 = [String() : Int()]
let myDict3: [String : Int] = [:]
let miDict4: Dictionary<String, Int> = [:]

//Access dictionary elements
let myElement = phoneBook["Ruslan"]

//Add new elements
phoneBook["Tom"] = 999
print(phoneBook)
phoneBook.removeValue(forKey: "Alice")
print(phoneBook)

//call nil element
let myArray = [1,2,3,4]
//let myNewVar = myArray[10]
let myNewVar = phoneBook["Chack"]
print(phoneBook)

//.Count, .isEmpty
let countOfElemetns = phoneBook.count
let isItEmpty = phoneBook.isEmpty

//Access keys/value as an array
let allKeys = phoneBook.keys
let allValues = phoneBook.values

//Practice
print("--------------------Practice-------------------")
var firstDict = ["Ukraine" : "Kyiv", "England" : "London", "Poland" : "Warsaw", "USA" : "Washington"]
var secondDict = ["Kyiv" : 03056, "London" : 5211, "Warsaw" : 00001, "Washington" : 010203]
var thirdDict = ["Ruslan" : true, "Angie" : false, "Boris" : true, "John" : true]

let firstDictKeys = (firstDict.keys).sorted()
let secondDictKeys = (secondDict.keys).sorted()
let thirdDictKeys = (thirdDict.keys).sorted()

var anyDict: [String : Any] = [:]

anyDict[firstDictKeys[0]] = firstDict["England"]
anyDict[secondDictKeys[1]] = secondDict["London"]
anyDict[thirdDictKeys[1]] = thirdDict["Boris"]

print(anyDict)
firstDict.removeValue(forKey: "Poland")
secondDict["Warsaw"] = nil
thirdDict.removeValue(forKey: "John")

var dictKeys = anyDict.keys
var dictValues = anyDict.values
print("Keys is: \(dictKeys)")
print("value is: \(dictValues)")
