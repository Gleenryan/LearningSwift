//let -> constant
let phi = 3.14

//var -> value can change
var length = 10
var nama = "Ryan"

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