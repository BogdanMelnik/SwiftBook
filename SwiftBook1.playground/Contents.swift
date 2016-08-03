//: Playground - noun: a place where people can play

import UIKit
import Darwin

var str = "Hello, playground"

print("Hello, world?")


// Code wriiten at global scope is used as the entery point for the program, so you don't need main() function

// You dont need semicolons at the end of every statement

var myVariable = 42
myVariable = 50
let myConstant = 42

// You dont alays have to write the type explicity

let implictInteger = 70
let implictDouble  = 70.0
let explictDouble: Double  = 70

let v1: Float = 4

// There is no implivit value conversion

let label = "The width is"
let width = 94
let widthLabel = label + String(width)

// Error
//let widthLabel1 = label + width

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples+oranges) picies of fruit."


let calculation: Float = 4.5543
let string = "Some string wiht calculation: \(calculation)"
let name = "Hodor"
let greeting = "Hello, \(name)! =)"

// Arrays and Dictionaries:

var shoppingList = ["catfish", "water", "tultips", "blue paint"]
shoppingList[1] = "bottle of water"
var occupations = ["Malcolm": "Capitan", "Kaylee": "Mechanic"]

occupations["Jayne"] = "Public Relation"

occupations["Malcolm"]

let emptyArray = [AnyObject]()
let emptyDictionary = [String:AnyObject]()

shoppingList = []
occupations = [:]


// Control flow (Brackets required)
let individualScores = [75,43,103, 87, 12]
var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

//if
let flag = true
if (flag) {
    print("Flag is true")
} else {
    print("Flag is false")
}

//switch
let vegetable = "Red pepper"

switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwitch.")
case let x where x.hasSuffix("pepper"):
    print("\(x) - it is a spicy")
//case _:
//    print("In each case!")
default:
    print("Everythig tastes good in soup.")
}

//for-in
let interestigNumbers = ["Prime": [2,3,5,7,11,13],
                         "Fibonacci": [1,1,2,3,5,8],
                         "Square": [1,4,9,16,25],
]

var largest = 0
var combinationName: String = "?"

for (kind, numbers) in interestigNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            combinationName = kind
        }
    }
}

print(largest)
print(combinationName)

//for

for var i=5; i<10; i+=1 {
    print(i)
}

//while
var n = 2

while n < 100 {
    n = n * 2
}

print(n)

//repeat-while

var m = 2
repeat {
    m = m * 2
} while m < 100

print(m)

// -= if-let structure usage=-
var optionalName: String?

if let name = optionalName {
    print("There is \(optionalName!).")
} else {
    print("There is no name in \"optionalName\".")
}

// Optionals

var optionalString: String? = "Hello"

print(optionalString == nil)

var optionalName1: String? = "John Appleseed"
optionalName1 = nil

var greeting1 = "Hello!"

if let name = optionalName {
    greeting1  = "Hello, \(name)!"
}

print(greeting1)

// Operator ??

let nickName: String? = nil
let fullName: String? = "John Appleseed"

let informalGreeting = "Hi, \((fullName ?? nickName)!)"

// Functions
func greet(person: String, day: String) -> String {
    return "Hello, \(person), today is \(day)."
}

greet("Bob", day: "Tuesday")

func greet(person: String, todaysLunchSpecial: String) -> String{
    return "Hello, \(person), todays lunch special is \(todaysLunchSpecial)."
}

greet("Boob", todaysLunchSpecial: "Soup")

func greet(_ person: String, on day: String) -> String {
    return "Hello, \(person), today is \(day)."
}

greet("Jhon", on: "Wednesday")

func makeSomething1(_ firstObject: AnyObject,_ secondObject: AnyObject) {
    
}

func makeSomething2 (label1 firstObject: AnyObject,label2 secondObject: AnyObject) {
    
}

func funcWithMultipleReturnVal(param1: Int, param2: Int, param3: Int) -> (value1: Int, value2: Int, value3: Int) {
    // Do something with parameters
    var value1 = param1 + 2
    var value2 = param2 * 2
    var value3 = param3 * param3;
    
    // Return multiple values
    return (value1, value2, value3)
}

makeSomething1(1, 2)
makeSomething2(label1: 1, label2: 2)

// Tuples 

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if (score > max) {
            max = score
        } else if score < min {
            min = score
        }
        
        sum += score
    }
    
    return (min,max,sum)
}

let statistics = calculateStatistics([100,234,432,554,231])

print(statistics.min)
print(statistics.max)
print(statistics.sum)

print(statistics.0)
print(statistics.1)
print(statistics.2)

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumOf()
sumOf(43, 33, 3423, 234, 2354, 43425)

func mainFunc() {
    func nestedFunc() {
    
    }
}

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

returnFifteen()

func mainFunc() -> ()->() {
    func returnedFunc()->() {
        
    }
    
    return returnedFunc
}

func makeIncremener() -> ((Int)-> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    
    return addOne
}

var increment = makeIncremener()
increment(7)

func hasAnyMatches(list: [Int], condition: (Int) -> (Bool)) -> (Bool) {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20,19,7,12]

hasAnyMatches(numbers, condition: lessThanTen)

// Blocks

numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({
    (number: Int) -> Int in
    if (number%2 != 0) {
        return 1
    }else {
        return 0
    }
})

print(numbers)
print(mappedNumbers)

var sortedNumbers = numbers.sort() { //swift 3.0 mubers.sorted
    $1 > $0
}

numbers.sort() { //swift 3.0 mubers.sorted
    $1 < $0
}

sortedNumbers = numbers.sort() { //swift 3.0 mubers.sorted
    $0 > $1
}

sortedNumbers = numbers.sort() { //swift 3.0 mubers.sorted
    $0 < $1
}

var func1 = ({
    () -> (String) in
    let s1 = "Some func"
    print(s1)
    return s1
})

var func2 = ({
    (name: String) -> (String) in
    let s1 = "Some func \(name)"
    print(s1)
    return s1
})

var func3 = ({
    (_ name: String,_ name2:String) -> (String) in
    let s1 = "Some func \(name) \(name2)"
    print(s1)
    return s1
})

var s2 = func1()
var s3 = func2("Valerka")
var s4 = func3("Valerka","Postniy")

var block2 = ({
    print("Other block")
})

block2()

//Object and Classes

class NamedShape {
    var numberOfSides = 0
    var name: String
    
    let constantProperty: UInt64 = 102030100500
    
    init() {
        self.name = "New shape"
    }
    
    init(name: String) {
        self.name  = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func setSidesNumber(number: Int) {
        self.numberOfSides = number
    }
    
    deinit {
        print(1)
        /*+++==== DEINITIALIZATOR ===+++ Perfotrm Some Cleanups HERE!!!*/
    }
}

var shape = NamedShape(name: "10ShapeName")
shape.numberOfSides = 10
shape.setSidesNumber(7)
print(shape.numberOfSides)
var shapeDescription = shape.simpleDescription()
//shape.deinit //how to call deinitializer???


class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
    }
    
    func area() -> Double{
        return self.sideLength * self.sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square (sideLength: 5.2, name: "My test square" )
print(test.area())
print(test.simpleDescription())

class Circle: NamedShape {
    var radius: Double
    
    init(radius: Double, name: String){
        self.radius = radius
        super.init(name: name)
    }
    
    func area () -> Double {
        return radius * M_PI_2 //??? Area of circle formula
    }
    
    override func simpleDescription() -> String {
        return "A circle with radius \(radius)."
    }
    
}

var test1 = Circle(radius: 1213.0, name: "test circle")
print(test1.area())
print(test1.simpleDescription())

// Getter and Setter 

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
//        set {
//            sideLength = newValue / 3.0
//        }
        set (newPerimeter) {
            sideLength = newPerimeter / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 99.1, name: "eq triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)
print(triangle.perimeter)

// willSet & didSet
class TrinagleAndSquare {
    var isInitalized:Bool?
    var triangle: EquilateralTriangle{
        // run before setting new value
        willSet {
            square.sideLength = newValue.sideLength
        }
        //run after setting new value
        didSet{
            isInitalized = true
        }
    }
    
    var square: Square {
        // run before setting new value
        willSet {
            triangle.sideLength = newValue.sideLength
        }
        //run after setting new value
        didSet{
            isInitalized = true
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size,name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }

}

var triangleAndSquare = TrinagleAndSquare(size: 20, name: "new test shape")
print(triangleAndSquare.isInitalized)
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.isInitalized)
print(triangleAndSquare.triangle.sideLength)

var optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")

var sideLength = optionalSquare?.sideLength

optionalSquare = nil

sideLength = optionalSquare?.sideLength

// Enumeration & Structures

enum Rank: Int {
    
    case Ace = 1
    case Two, Three, Four, Five, Six, Sven, Eight, Nine, Ten
    case Jack, Qeen, King
    
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Qeen:
            return "qeen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    
    func rankCompare(elem1: Rank, elem2: Rank) -> Rank {
        if(elem1.rawValue == elem1.rawValue) {
            print("'ele1m1.rank' is equal to 'elem2.rank'!")
            return elem1
        }
        
        if (elem1.rawValue>elem2.rawValue) {
            print("'ele1m1.rank' > 'elem2.rank'!")
            return elem1
        } else {
            print("'ele1m1.rank' < 'elem2.rank'!")
            return elem2
        }
    }
}

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit: Int{
    case Spades, Hearts, Diamonds, Clubs
    
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    
    func color() -> UIColor {
        switch self {
        case .Hearts:
            return UIColor.redColor()
        case .Diamonds:
            return UIColor.redColor()
        case .Clubs:
            return UIColor.blackColor()
        case .Spades:
            return UIColor.blackColor()
        }
    }
    
    func colorDescription() -> String {
        switch self {
        case .Hearts:
            return "red"
        case .Diamonds:
            return "red"
        case .Clubs:
            return "balck"
        case .Spades:
            return "balck"
        }
    }
}

let hearts = Suit.Hearts
print(hearts)
let heartsDescription = hearts.simpleDescription()
print(heartsDescription)
let heartsColor = hearts.color()
print(heartsColor)
let heartsColorDescription = hearts.colorDescription()
print(heartsColorDescription)


struct Card {
    var rank: Rank
    var suit: Suit
    
    init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
    }
    
    func simpleDescription() -> String {
        return "The \(self.rank.simpleDescription()) of \(self.suit.simpleDescription())"
    }
    
    static func createDeck() -> [Card] {
        var deck = [Card]()
        var n = 1
        while let rank = Rank(rawValue: n) {
            var m = 0
            while let suit = Suit(rawValue: m) {
                deck.append(Card(rank: rank, suit: suit))
                m+=1
            }
            n+=1
        }
        return deck
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

enum ServerResponse {
    case Result(String, String)
    case Error(String)
    case AnotherResponse(String, Double)
}

let succes = ServerResponse.Result("6:00 am", "8:09 pm")

let failure = ServerResponse.Error("Out of cheese.")

switch succes {
case let .Result(sunrise,sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)"
case let .Error(error):
    let serverResponse = "Failure... \(error)"
    
case let .AnotherResponse(anotherResponse1, anotherResponse2):
    let serverResponse = "Another response... \(anotherResponse1), \(anotherResponse2)"
}

// Protocols

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

enum SimpleEnumeration: ExampleProtocol {
   
    case BaseState
    
    case AdjustedState
    
    var  simpleDescription: String {
        return self.getDescription()
    }
    
    func getDescription() -> String {
        switch  self {
        case .BaseState:
            return "SimpleEnumeration BaseState"
        case .AdjustedState:
            return "SimpleEnumeration AdjustedState"

        }
    }
    
    mutating func adjust() {
        self = .AdjustedState
    }
    
}

var c = SimpleEnumeration.BaseState
c.adjust()
let cDescription = c.simpleDescription


// Extensions

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)."
    }
    
    mutating func adjust() {
        self += 42
    }
}

print(7.simpleDescription)

extension Double: ExampleProtocol {
    var simpleDescription: String {
        return "The double number \(self)."
    }
    
    var absoluteValue: Double {
        if self >= 0.0 {
            return self
        }
        
        if self < 0.0 {
            return self * (-1.0)
        }
        
        return self
    }
    
    mutating func adjust() {
        self += 45.55
    }

}

var d1 = -3242.32
var d2 = d1.absoluteValue

print("Simple: \(d1); Absolute: \(d2)")


let protocolValue: ExampleProtocol = d1
print(protocolValue.simpleDescription)
//print(protocolValue.absoluteValue) //Can't access

//Errors Handling

enum PrinterError: ErrorType { // -= IN SWIFT 3.0 =- "ErrorProtocol"
    case outOfPaper
    case noToner
    case onFire
}

func send(job job: Int, toPrinter printerName: String)throws -> String {
    
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    
    if printerName == "Is On Fire" {
        throw PrinterError.onFire
    }
    
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter:  "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}

do {
    let printerResponse = try send(job: 1040, toPrinter:  "Never Has Toner")
    print(printerResponse)
} catch let OWIBKA as PrinterError {
    print(OWIBKA)
}

do {
    let printerResponse = try send(job: 1040, toPrinter:  "Is On Fire")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this iver here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}

let printerSucces = try? send(job:18844, toPrinter: "Mergenthaler")
let printerFailre = try? send(job:18855, toPrinter:  "Never Has Toner")

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContaints(_ food: String) -> Bool {
    fridgeIsOpen = true
    
    defer {
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(food)
    
    return result
}

fridgeContaints("banana")
print(fridgeIsOpen)

//Generics

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}

makeArray(repeating: "Knock", numberOfTimes: 5)

// Reimplement the Swift standard library's optional type
enum OptionalValue<Warped>{
    case none
    case some(Warped)
}

var possibleInteger: OptionalValue<Int> = .none
print(possibleInteger)
possibleInteger = .some(100)
print(possibleInteger)

//func makeArray1(repeating item: AnyObject, numberOfTimes: Int) -> [AnyObject] {
//    var result = [AnyObject]()
//    for _ in 0..<numberOfTimes {
//        result.append(item)
//    }
//    return result
//}
//
//var array1 = makeArray1(repeating: "alkaida", numberOfTimes: 5)

func makeArray1(repeating item: AnyObject, numberOfTimes: Int) -> [String] {
    var result = [AnyObject]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result as! [String]
}

var array1 = makeArray1(repeating: "alkaida", numberOfTimes: 5)

//In swift 3.0 "SequenceType"=="Sequence"
func anyCommonElements<T: SequenceType, U:SequenceType where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element>(_ lhs: T,_ rhs: U) -> Bool {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if(lhsItem == rhsItem) {
                return true
            }
        }
    }
    
    return false
}

var elems = anyCommonElements([1,2,3], [3])
print(elems)


