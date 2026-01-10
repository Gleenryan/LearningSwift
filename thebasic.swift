//let -> constant
let phi = 3.14

//var -> value can change
var length = 10
var nama = "Ryan"
var money = 1_000_000
print(money)

//you can declare  wihtout value
let maxloginattempts: Int
maxloginattempts = 5

//declare multiple (has to be the same data type)
var x = 0.0, y = 0.0, z = 0.0

//if

if length > 5{
    print("length is greater than 5")
} else{
    print("Up to you")
}



//print
print("The length is \(length)")

//semicolon ; -> for one liner
let number = 67; print("learning semicolon \(number)" + String(number))

//typealias -> give name for custom data type

typealias Age = Int
let age:Age = 19
//type age is now Int

//tuples
let http404Error = (404, "Not Found")
var duar = (status:200, message:"OK")
duar.status = 201
print("The status code is \(duar.status)")
let (statusCode, statusMessage) = http404Error
print("The tuple first value \(statusCode)")
print("The tuple first value \(http404Error.0)")
print("The tuple second value \(statusMessage)")

//optional ?
var name: String? = nil
var hello: String? // nil by default
name = "Ryan"
print(name)
//?? only for optional -> more for fallback
print(name ?? "no name") // coalescing operator, can't be done without nil

// multiple if can be used by -->  ,
if let first = Int("4"), let second = Int("42"), first < second && second < 100 {
    print("\(first) < \(second) < 100")
}
//same as
if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

//force unwrapping(!) -> tell swift it will never be nil
// let number = Int("123")
// print(number!)

//stop execution immediately --> fatalError()
//fatalError("unimplemented")

//ERROR HANDLING --> do try catch, error can be enumed

enum SandwichError: Error {
    case noBread
}

func makeSandwich() throws {
    let hasBread = false

    if !hasBread {
        throw SandwichError.noBread
    }

    print("Sandwich made")
}

do {
    try makeSandwich()
    print("Eating sandwich")
} catch SandwichError.noBread {
    print("Can't make sandwich cz no bread")
}


//DEBUGGING TOOLS FOR DEVELOPER
//assert -> only in debug mode n will crash if not satisfied, will be ignored when released
let agez = -5
// if agez < 0 {
//     assertionFailure("Age must be positive")
// }
// assert(agez >= 0, "Age must be positive")

//precondition --> same like assert but will also be checked in release mode
