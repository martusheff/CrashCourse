var playerName = "Alice"
var age = 21
var temperature = 72.6
var activeMembership = true

// Type Inference - Swift infers the data type, and sets it to it.
// Var is the only way to declare variables.

age = age + 5

var bonusScore: Int // Without providing value for inference, assign var a type. (Type annotation)
var environmentName: String
var levelCompleted: Bool
var progressPercentage: Double

// Core Swift data types.
// Int, String, Double, Float, Bool, UInt, Character

let a = 5
let b = 2

let myResult = a / b

var score = 1
var highScore = 100.0

highScore = Double(score)

var message = "this is a message"

var number = 3

message = String(number)

let myString = "kdasl"

let myResultV2 = Int(myString)

var firstName: String?
var lastName: String?
var userAge: Int?


// Using Optionals

var regularInt: Int
var optionalInt: Int?

// cat set values
regularInt  = 100
optionalInt = 100
regularInt += 100

// check for nil
if optionalInt != nil {
    // "forced unwrapping"
    var unwrappedInt = optionalInt!
    unwrappedInt += 50
}

// optional binding
if let unwrappedInt = optionalInt {
    print(unwrappedInt)
} else {
    // there is no value
}

// Swift Arrays
var musicalModes = ["Ionian", "Dorian", "Phrygian", "Lydian"]
let speedLimits = [15, 25, 30, 35, 40, 50, 60, 75, 100]

let initialModes = musicalModes[0]

//change value
musicalModes[3] = "Aeolian"
musicalModes.append("Locrian")
// add it again

musicalModes.append("Locrian")

let theRemovedElement = musicalModes.removeLast()

var myStringAwway: [String]
var myIntArray: [Int] = []

// If statements
var myScore = 100

if myScore > 100 {
    print("You win!")
} else if myScore == 100 {
    print("So close!")
} else {
    print("Sorry, maybe next time.")
}


// Switch statements

var abbrev = "MB"

switch abbrev {
case "kB":
    print("kilobyte")
case "MB":
    print("megabyte")
default:
    print("Not a recognized abbreviation.")
}


let volcanoExplosivityIndex: Int

volcanoExplosivityIndex = 2

switch volcanoExplosivityIndex {
case 0:
    print("Effusive")
case 1:
    print("Gentle")
case 2:
    print("Explosive")
case 3:
    print("Catastrohic ☹️")
case 4...11:
    print("Anywhere from 4 to 11, inclusive.")
default:
    print("Not a recognized index.")
}
