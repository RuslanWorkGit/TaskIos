import Darwin

// MARK: first
// Обʼява змінних
let line1: String = "Hi"
let line2 = "Hi"
let line3: String
line3 = "Hi"

// Приведення типів
let number = 10
let div = Float(number) / 2

// Float vs Double
let someFloat: Float = 1.123456789
let someDouble: Double = 1.123456789

// Char
let someChar: Character = "A"
someChar.asciiValue
// MARK: second
// Tuples

let some : (String, Int, Double) = ("Mac", 1000, 500.1)
some.0
some.1
some.2

var car: (name: String, years: Int) = ("Audi", 2015)
car.name
car.years
car.name = "bmw"
print(car)

//Practice
//First
let firts: Int = 12
let second: String = "10"
let third: Float = 15.55

let sum = Double(firts) + Double(second)! + Double(third)

//Second
typealias NAME = String
typealias PRICE = Float
typealias YEARS = Int

let film: (name: NAME, years: YEARS) = ("Spider-Man", 2012)
let smartphone: (name: NAME, price: PRICE) = ("Iphone XR", 600)
let country: (name: NAME, capital: NAME) = ("Ukraine", "Kyiv")
print("Name of the film is \(film.name), Name of smartphone is \(smartphone.name), Name of the country is \(country.name)")
print()
print("Years of film intriduce is \(film.years), Price of the phone is \(smartphone.price), Capital of th ecountry is \(country.capital)")
