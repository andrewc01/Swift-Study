import Cocoa

// Learning Swift with 100 Days of SwiftUI

var name = "Ted"
name = "Rebecca"

let user = "Daphne"
print(user)

let actor = "Tom Cruise 🏃‍♂️"

let quote = "He tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life of a
Swfit learner.
"""

print(actor.count)

print(quote.hasPrefix("He"))
print(quote.hasSuffix("Away."))

let score = 10
let higherScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))

let id = Int.random(in: 1...1000)

let newScore = 3.0

let goodDogs = true
let gameOver = false
var isSaved = false
isSaved.toggle()

let newName = "Taylor"
let age = 26
let message = "I'm \(newName) and I'm \(age) years old."
print(message)

var colors = ["Red", "Green", "Blue"]
let numbers = [4, 8, 15, 16]
var readings = [0.1, 0.5, 0.8]

print(colors[0])
print(readings[2])

colors.append("Tartan")
colors.remove(at: 0)
print(colors.count)

print(colors.contains("Octarine"))

let employee = [
    "name": "Taylor",
    "job": "Singer"
]

print(employee["job", default: "Unknown"])

var setOfNumbers = Set([1, 1, 3, 5, 7, 9])
print(setOfNumbers)

setOfNumbers.insert(10)
setOfNumbers.contains(11)

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .friday

var anotherScore: Double = 0

let player: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true

var albums: [String] = ["Red", "Fearless"]
var anotherUser: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])

var teams: [String] = [String]()
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light

let anotherAge = 16
    
if anotherAge < 12 {
    print("You can't vote.")
} else if age < 18 {
    print("You can vote soon.")
} else {
    print("You can vote now.")
}

let temp = 26

if temp > 20 || temp < 30 {
    print("It's a nice day.")
}

enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It's a nice day.")
case .rain:
    print("Pack an umbrella")
default:
    print("Should be okay.")
}

let thirdAge = 18
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os)")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

var count = 10

while count > 0 {
    print("\(count)...")
    count -= 1
}

print("Go!")

let files = ["me.jpg", "work.txt", "sohpie.jpg"]

for file in files {
    if file.hasPrefix(".jpg") == false {
        continue
    }
    print("Found picture: \(file)")
}

func printTimesTable(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(number: 8)

func rollDice() -> Int {
    Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let (firstName, _) = getUser()
print("Name: \(firstName)")

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO WORLD"
let newResult = isUppercase(string)

func newPrintTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

newPrintTimesTable(for: 5)

func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)")
    } else {
        print("Hi, \(person)")
    }
}

greet("Tim", formal: true)
greet("Taylor")

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}

do {
    let passResult = try checkPassword("12345")
    print("Rating: \(passResult)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}
