// Core Data Type/Declarations
var playerName = "Alice"
var age = 21
var temperature = 72.6
var activeMembership = true

// Type Inference - Swift infers the data type, and sets it to it.
// Var is the only way to declare variables.
age = age + 5

// Without providing value for inference, assign var a type. (Type annotation)
var bonusScore: Int
var environmentName: String
var levelCompleted: Bool
var progressPercentage: Double

// Let = Constant
let a = 5
let b = 2
let myResult = a / b

// Type Conversion.
var score = 1
var highScore = 100.0
highScore = Double(score)

var message = "this is a message"
var number = 3
message = String(number)

let myString = "kdasl"
let myResultV2 = Int(myString)


// Optionals "?"
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

// Remove element, and set it to constant theRemovedElement
let theRemovedElement = musicalModes.removeLast()

var myStringArray: [String] // Tell Swift what kind of array you are making.
var myIntArray: [Int] = [] // Create empty array.

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


// More switch statements
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

// Strides
for number in stride(from: 0, to: 256, by: 5) {
    print(number)
}

// String Interpolation
var trackname = "Ambre"
var artistName = "Nils Frahm"
var duration = 228

// ...
let messageV2 = "Now playing \(trackname) by \(artistName) which is \(duration) long."
print(messageV2)
print("Now playing \(trackname) by \(artistName) which is \(duration / 60)m \(duration % 60)s long.")


// Creating Functions
func showMessage(number: Int, name: String) {
    var newNumber = number
    newNumber += 5
    print("Hello \(name), the function call worked, and we passed in int of \(number)")
}
showMessage(number: 5, name: "Andron")

// Returning values
func basicFunction() -> String {
    let str = "This is a simple function."
    return str
}
let result = basicFunction()
print(result)

//Ignoring returned Values
func calculateValue() -> Int {
    print("Function successfully called.")
    return 99
}

func applicationLaunched(_ aNotification: Int) {
    _ = calculateValue()
}

// Omitting Argument Labels
func show(message: String) {
    print("The text passed in was: \(message)")
}
// call
show(message: "This seems a little redundant.")


//  Changing Argument Labels
func difference(between firstAmount: Int, and secondAmount: Int) -> Int {
    if firstAmount > secondAmount {
        return firstAmount - secondAmount
    } else {
        return secondAmount - firstAmount
    }
}
let resultV2 = difference(between: 27391, and: 7863)
print("The difference is: \(resultV2).")

// Enumerations

enum MediaType {
    case book, movie, music, magazine
}
var itemType: MediaType
itemType = .movie

// later
itemType = .music

// Use in Switch Statement
var itemTitle = "Middlemarch"
switch itemType {
case .book:
    print("I've been reading \(itemTitle)")
case .music:
    print("I've been listening to \(itemTitle)")
case .movie:
    print("I've been watching \(itemTitle)")
case .magazine:
    print("I've recently subscribed to \(itemTitle)")
}

// Enumerations: Raw Values

enum BottleSize: String {
    case half = "28.5 cl"
    case standard = "75 cl"
    case magnum = "1.5 litres"
    case jeroboam = "3 litres"
}

var myBottle: BottleSize = .jeroboam
print("Your \(myBottle) is \(myBottle.rawValue).")

enum Intensity{
    case light, moderate, hard
}
enum Workout { // Got ahead of myself. In this case, create a struct. Intensity is a better use case.
    case feeling(String)
    case intensity(String)
    case distance(Double)
    case duration(Int)
}

var newEntry: Workout = .duration(98)

switch newEntry {
case .feeling(let experience):
    print("I am feeling \(experience).")
case .intensity(let level):
    print("I put in a \(level) workout.")
case .distance(let miles):
    print("I ran \(miles) miles.")
case .duration(let minutes):
    print("Total length of workout was \(minutes / 60) hour(s) and \(minutes % 60) minute(s).")
}


// Structs
struct Movie {
    // properties
    var title: String
    var director: String
    var releaseYear: Int
    var genre: String
    
    func summary() -> String{
        return "\(title) is a \(genre) film released in \(releaseYear) and directed by \(director)."
    }
}

var first = Movie(title: "Waterboy", director: "Director Directorson", releaseYear: 1990, genre: "Funny")
var second = Movie(title: "Big Daddy", director: "Not Adam Sandler", releaseYear: 1990 , genre: "Also funny")

print(first.title)
print(second.genre)

second.releaseYear = 1991
print(first.summary())
print(second.summary())


// Dictionaries

var airlines = ["SWA": "Southwest Airlines",
                "BAW": "British Airways",
                "BHA": "Buddha Air" ]

if let resultV3 = airlines["SWA"] {
    print(resultV3)
} else {
    print("No match found")
}

// add or change
airlines["DVA"] = "Discovery Airlines"

// remove by setting to nil
airlines["BHA"] = nil

// Dictionary of String keys and String values
var periodicElements: [String: String]

// Dictionary of Int keys and String Values
var employees: [Int:String]

for (code, airline) in airlines {
    print(airline)
    print(code)
}

// Tuple example

let cameraType = "Canon"
let photoMode = true
var shutterSpeed = 60
var iso = 640
var aperture = "f1.4"

var basicTuple = (aperture, iso, cameraType)

print(basicTuple)

// can mix literals, constants, variables
var nextTuple = ("String literal!", photoMode, 32342, cameraType)

// Returning a tuple from a function

func randomAlbum() -> (albumtitle: String, length: Int) {
    let title = "And in the endless pause there came the sound of bees."
    let duration = 3432
    
    return (title, duration)
}

let resultV3 = randomAlbum()
print(resultV3)

// best use case
let (nextTitle, length) = randomAlbum()
print("Playing next: \(nextTitle) (\(length/60)m\(length % 60)s)")

// Dictionaries with Tuples
for (x,y) in airlines {
    print("The key is \(x) and the value is \(y).")
}
