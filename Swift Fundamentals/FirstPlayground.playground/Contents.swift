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


// Closures
struct Book { // Struct of Book
    var title: String
    var authorLastName: String
    var authorFirstName: String
    var readingAge: Int
    var pageCount: Int
}

// 5 Books
let book1 = Book.init(title: "Where the wild things are", authorLastName: "Sendak", authorFirstName: "Maurice", readingAge: 4, pageCount: 48)
let book2 = Book.init(title: "The little Prince", authorLastName: "de Saint-EWxupery", authorFirstName: "Antoine", readingAge: 10, pageCount: 96)
let book3 = Book.init(title: "Oh the Places You'll go", authorLastName: "Seus", authorFirstName: "Dr.", readingAge: 19, pageCount: 56)
let book4 = Book.init(title: "Goodnight moon", authorLastName: "Wise Brown", authorFirstName: "Margeret", readingAge: 1, pageCount: 30)
let book5 = Book.init(title: "The Hobbit", authorLastName: "Tolkien", authorFirstName: "J.R.R.", readingAge: 12, pageCount: 300)

let allBooks = [book1, book2, book3, book4, book5] //  Array of Books

let ageSortedBooks = allBooks.sorted { $0.readingAge <= $1.readingAge } // Copies array into sorted result.

let shortestToLongest = allBooks.sorted { $0.pageCount <= $1.pageCount } // Sorts by pageCount.

let booksForUnder10s = allBooks.filter { $0.readingAge < 10} // Sorts for reading Ages under 10

let sortedByPageForUnder10 = booksForUnder10s.sorted { $0.readingAge < $1.readingAge } // Sorted by length for ages under 10.


// Classes

class Appliance {
    // properties
    var manufacturer: String = ""
    var model: String = ""
    var voltage: Int = 0
    var capacity: Int?
    
    //methods
    func getDetails() -> String {
        var message = "This is the \(self.model) from \(self.manufacturer)."
        if self.voltage >= 220 {
            message += "This model is for European usage."
        }
        return message
    }
}


// ... later, create instance
var kettle = Appliance()
kettle.manufacturer = "Megapliance, Inc"
kettle.model = "TeaMaster 5000"
kettle.voltage = 120
print(kettle.getDetails())

// Initialization
class ApplianceV2 {
    // properties
    var manufacturer: String
    var model: String
    var voltage: Int
    var capacity: Int?
    
    // initializer
    init() {
        self.manufacturer = "default manufac."
        self.model = "default model"
        self.voltage = 120
    }
    
    // deinitializer
    deinit {
        //perform cleanup code here...
        // release a file resource
        // release a network resource
    }
    
    // additional initializer
    
    init(withVoltage: Int) {
        self.manufacturer = "defualt manufact."
        self.model = "default model"
        self.voltage = withVoltage
    }
}

var cafetiere = ApplianceV2(withVoltage: 5)


// Structs & Classes
struct ApplianceV3 {
    // properties
    var manufacturer: String
    var model: String
}

var toaster = ApplianceV3(manufacturer: "LG", model: "Toast Buddy 700")

// Value vs. Reference
// a Swift string is a struct - a value type
var firstString = "This is some text..."

// if I assign, it's a copy...
var secondString = firstString

// so a change to the second string...
secondString += " with some added text."
print(secondString)

// does not affect the other
print(firstString)

class Message {
    var internalText: String = "This is some internal text..."
}

// creates new instance
var firstMessage = Message()

// if I assign, it's a reference to the original instance
var secondMessage = firstMessage

secondMessage.internalText += " with some additional text."

//print both. same reference.
print(firstMessage.internalText)
print(secondMessage.internalText)

/// are they the same thing?
if firstMessage === secondMessage {
    print("Yes - they are references to the same instance.")
}


// Inheritance
class ApplianceV4 {
    var make: String
    var model: String
    init() {
        self.make = "default"
        self.model = "default"
    }
    final func printDetails() {
        print("Make: \(self.make) \nModel: \(self.model)")
    }
}

// define new class
class Toaster: ApplianceV4 {
    // new property
    var slices: Int
    
    override init() { // overrides super inheritance
        self.slices = 2
        super.init()
    }
    //new method
    func toast() {
        print("Irradiating now...")
    }
}

// Toaster inherits Class ApplianceV4, and assumes its attribiutes/funcs.
var myToaster = Toaster()
myToaster.make = "ArmeCorp"
myToaster.model = "Carbonizer"
myToaster.printDetails()
myToaster.toast()


// Extensions
let newAlbum = "Deck and drums and rock and roll"
let scriptio = "Neque porro quisquam est qui dolorem opsum..."
let phrase = "Love is now here"

newAlbum.uppercased()

// Creating an extension of String "Remove Spaces"
extension String {
    func removeSpaces() -> String {
        let filteredCharacters = self.filter{ $0 != " "}
        return String(filteredCharacters)
    }
}
print(newAlbum.removeSpaces())




// Stored Properties
class MyClass {
    //properties
    let name: String = ""
    var width: Int = 0
    var height: Int = 0
}

// Adding Computed Properties
class Player: CustomStringConvertible {
    //stored properties
    var name: String
    var livesRemaining: Int
    var enemiesDestroyed: Int
    var penalty: Int
    var bonus: Int
    
    var description: String {
        return "Player \(self.name) has a score of \(self.score) and \(self.livesRemaining) lives remaining."
    }
    
    // computed property
    var score: Int{
        get { // with read only, only include return statement
           return(enemiesDestroyed * 1000) + bonus + (livesRemaining * 5000) - penalty
        }
        set {
            print("You passed in \(newValue) but I'm going to ignore it.")
        }
    }
    
    init(name: String) {
        self.name = name
        self.livesRemaining = 3
        self.enemiesDestroyed = 0
        self.penalty = 0
        self.bonus = 0
    }
}


// Create player.
let newPlayer = Player(name: "Ava")

// as the game progresses, values change...
newPlayer.enemiesDestroyed = 326
newPlayer.penalty = 872
newPlayer.bonus = 25000

print("The final score is: \(newPlayer.score).")
newPlayer.score = 10333


// Protocols - A set of rules or a code of behavior.
let p1 = Player(name: "Ava")
let p2 = Player(name: "Mason")
p1.enemiesDestroyed = 326
p1.penalty = 872
p1.bonus = 25000
p2.enemiesDestroyed = 411
p2.penalty = 8722
p2.bonus = 20000
print(p1)
print(p2)

// Define a protocol
protocol MyProtocol {
    // what methods are required?
    func showMessage()
    
    var name: String { get }
}
struct MyStruct: MyProtocol {
    func showMessage() {
        print("Now conforming...")
    }
    var name = "Andron"

}


// Error Handling

// Define
enum ServerError: Error {
    case noConnection
    case servernotFound
    case authenticationRefused
}

// Use
func checkStatus(serverNumber: Int) throws -> String {
    switch serverNumber {
    case 1:
        print("You have no connection.")
        throw ServerError.noConnection
    case 2:
        print("Authentication failed.")
        throw ServerError.authenticationRefused
    case 3:
        print("Server 3 is up and running!")
    default:
        print("Can't find the server.")
        throw ServerError.servernotFound
    }
    return "Success!"
}

// Handle
do {
    let resultV4 = try checkStatus(serverNumber: 1)
    print(resultV4)
} catch ServerError.noConnection {
    print("No connection, please try later.")
} catch ServerError.authenticationRefused {
    print("Authentication error. Please check your username and password.")
} catch {
    print("The problem is: \(error)")
}

// Alternatively, if you do not care about the value...
let resultV5: String?
do {
    resultV5 = try checkStatus(serverNumber: 3)
} catch {
    resultV5 = nil
}

if resultV5 != nil {
    print(resultV5!)
}

let resultV6 = try? checkStatus(serverNumber: 3)

if let resultV7 = try? checkStatus(serverNumber: 1) {
    print(resultV7)
}

// Guard and Defer - Control Flow

// Guard
func processTrack(trackName: String?, artist: String?, duration: Int?) {
    // check for values
    guard let unwrappedTrack = trackName,
          let unwrappedArtist = artist,
          let unwrappedDuration = duration else { return }
    // now start processing
    print("\(unwrappedTrack) by \(unwrappedArtist) - \(unwrappedDuration / 60):\(unwrappedDuration % 60)")
}

processTrack(trackName: "Blood on My Jeans", artist: "Juice WRLD", duration: 155)

// Defer - Defers code execution to right before leaving the scope.
// Ex Use Case
class ShoppingCart {
    var numItems: Int = 0
    
    init() {
    
    }
    func open() {
        print("Your cart is now open.")
    }
    func upsellMessage() {
        print("Save 10& when you spend $149 or more!")
    }
    func close() {
        print("Your cart is now closed.")
    }
    func totalItems() {
        print("You have \(self.numItems) item(s) in your cart.")
    }
}
var myCart = ShoppingCart()

func addToCart(myCart: ShoppingCart) {
    myCart.open()
    defer {
        myCart.close()
    }
    myCart.numItems += 1
    myCart.totalItems()
}

addToCart(myCart: myCart)
