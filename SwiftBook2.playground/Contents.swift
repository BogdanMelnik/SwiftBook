//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//let x = 0.0, y = 0.0, z = 0.0

let coordinate1:(x: Double, y: Double, z: Double) = (0.0,0.0,0.0)
let coordinate2:(Double, Double, Double) = (0.0,0.0,0.0)

var x, y, z: Double
var `import` = "import is a keyword"

print(`import`, terminator:"$")

let interpoliruem = "interpoliruem"
var radik = "i love to say \"\(interpoliruem)\""

//simple line comment

/* 
 multiple
 line
 comment
*/

/* 
 outer
 comment
 /* 
  nested
  comment
 */
 outer
 comment
*/

print("i don't want semicolon")
print("i want semicolon");

let text = "Semicolon needed if two operators at the same line"; print(text)

//-=RANGES=-
// INT
// Same as platform
print(Int.min)
print(Int.max)

// 8-bit
print(Int8.min)
print(Int8.max)

// 16-bit
print(Int16.min)
print(Int16.max)

// 32-bit
print(Int32.min)
print(Int32.max)

// 64-bit
print(Int64.min)
print(Int64.max)

// UINT
// Same as platform
print(UInt.min)
print(UInt.max)

// 8-bit
print(UInt8.min)
print(UInt8.max)

// 16-bit
print(UInt16.min)
print(UInt16.max)

// 32-bit
print(UInt32.min)
print(UInt32.max)

// 64-bit
print(UInt64.min)
print(UInt64.max)

// Float: 32-bit (6 digits after .)
extension Float {
    static var min = FLT_MIN
    static var max = FLT_MAX
}
print(Float.min)
print(Float.max)

// Double: 64-bit (15 digits after .)
extension Double {
    static var min = DBL_MIN
    static var max = DBL_MAX
}
print(Double.min)
print(Double.max)

typealias аппка = UIApplication
print(аппка)

let error = (404, "Not found!")
let (code, message) = error

let (codeOnly, _) = error

if let firstNumber = Int("100500"), let secondNumber = Int("100200") where firstNumber >= secondNumber {
    print("secondNumber is smaller")
}

//var age = 0
//assert(age>0, "Age is lesser than 0")

for charter in "Hello!".characters {
    print(charter)
}

let questionMark: Character = "!"

// Escape charters
var line = "\0 \\ \t \n \" \' \u{12345}"

var greeting = "Gutten Morgen!"
print(greeting[greeting.startIndex])

// Swift 3.0
//print(greeting[greeting.index(before: greeting.endIndex)])
//greeting.insert(contentsOf: "Niggas?".characters, atIndex: greeting.endIndex)

print(greeting.unicodeScalars)

for scalar in greeting.unicodeScalars {
    print(scalar)
    print(scalar.value)
    print(scalar.hashValue)
}

var items = [1,2,3,4,5,6,7]
items[3...5] = [12,13]
items

var stringItems = ["one", "two", "three", "four", "five"]

for (number, item) in stringItems.enumerate() {
    print("\(number): \(item)")
}

var letters = Set<Character>()

letters.insert("a")
letters.insert("a")
letters.insert("b")
letters.insert("c")

letters  = ["c", "b", "a"]

var dictionary:[Int: String] = [:]

dictionary[10] = "ten"

dictionary

var he = 1

ololo1name: repeat {
    he+=1
    while true {
        break ololo1name
    }
} while he != 10


var ca:Character = "c"
print(ca.dynamicType)

switch ca {
case "d" where "d"=="d":
    print("what a duck?!!!")
    fallthrough
case "d"..."f":
    break
case "d"..<"f":
    break
default:
    break;
}

let somePoint = (101,2200)
print(somePoint.dynamicType)

switch somePoint {
case (_,_):
    print()
case (100...2000, 2000...3000):
    print()
case (let x, let y):
    print("\(x) \(y)")
case (let x, let y) where x==y:
    print("\(x) \(y)")
}

print(Any.self)

//
//var person:[String : String] = [:]
//guard let name = person["name"] else {
//    print("error")
//}
//

if #available(iOS 8.4.1, OSX 10.10, *) {
    
}

func minMax(array: [Int] = [100,1000]) ->  (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    }
    //bla bla
    return (100, 1000)
}

// func swapTwoValues<T> (_: inout T, inout _: T) { //swift 3.0
func swapTwoValues<T>(inout a: T, inout _ b: T) {
    let tempA = a;
    a = b
    b = tempA
}
var red = UIColor.redColor()
var blue = UIColor.blueColor()

swapTwoValues(&red, &blue)

red
blue

var names = ["Valerka","Postniy","Alla","Boris","Kolya","Zheka"]

names = names.sort({$0 < $1})
names = names.sort {$0 < $1}
names
names = names.sort(>)
names

func f1 (closure: () -> Void) {
    
}

f1({}) //without trailing clousures

f1() {} //with trailing cloures //need to be last one argument

f1{} //with traling closures //need to be only one argument

//escaping closures
//nonescaping closures //nonescaping - hard optimization and cant called after return

// Autoclosures
print(names.count)
let removePostniy = { names.removeAtIndex(2) }
print(names.count)
//-= some actions here =-
print("Now we removed \(removePostniy())")
print(names.count)
// @autoclosure used to ommit the usage of "{" and "}" in sending parameter of function
// @autoclosure(escaping) if this is escaping closure

//indirect cases - recursive 

//structures have default membervise initializer

//structure - value type
//enum - value type
//class - reference type

//stored properties:
// - class
// - structure

//computed properties:
// - class
// - structure
// - enumeration

//if only getter - get keyword don't needed
//lazy cannot have didSet or willSet

//global variables always lazy
//local - never lazy
//subscript can not use in-out and default parameters
//final keyword pervent subclassing (can be used with class, property or method)

//only classes can have deinitializers

var whatADuck = 10_000

class Person {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    var apartment: Apartment?
    deinit {
        print("\(name) is been deinitialized")
    }
}

class Apartment {
    let unit: String
    init(unit: String){
        self.unit = unit
    }
    weak var tenant: Person?
    deinit {
        print("Apartament \(unit) is been deinitialized")
    }
}

var john: Person?
var unit4A: Apartment?

john = Person(name: "John Appleseed")
unit4A = Apartment(unit: "4A")

john!.apartment = unit4A
unit4A!.tenant = john

unit4A = nil
john = nil

/*

static and class both associate a method with a class, rather than an instance of a class. The difference is that subclasses can override class methods; they cannot override static methods.

class properties will theoretically function in the same way (subclasses can override them), but they're not possible in Swift yet.
 
*/



