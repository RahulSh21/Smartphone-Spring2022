import Cocoa
import CoreGraphics

let greeting = "Welcome, playground"
var greeting1 = "Hello, playground"
print(greeting ,"/" , greeting1)

//let is for Constance
//var is for variable which can be change in future


/*
 * Basice Data Types
 *let intValue : Int = 5
 *let doubleValue : Double = 5.0
 *let Str : String = "Hello EveryOne"
 *let boolenValue : Bool = true
 
 *var x,y,z : Int      <- mult variable decl
 
 *?  <- optional value(they can't be "let")
 *example     var optonalInt : Int?
 *for emoji  command+control+space
 */
// Example for Emoji
let 😡 = "Anger 😀"
var 😀 = "10:30"
//let ⌚️: Timer = 10

print(😀  + " Name \(😡)")
print("Hello"); print(😡)
print("Int min value =  \(Int.min)")
print("Double min value =  ")
// UInt  <- unsign int
print("Int max value =  \(UInt64.max)")
var doubleMaxInt : Double = 18446744073709551615
doubleMaxInt=doubleMaxInt*2
print(doubleMaxInt)



let binaryVal = 0b0111   ///for octal value = 0o237, hexa = ox123ABF or 0xE -> 14
print(binaryVal)

let tupleValue = (404, "Not Found") ///tupleValues
print(tupleValue.0)
print(tupleValue.1)


let (id,status) = (404, "Not Found")  //for defining with labels
print(id)
print(status)


let tripleValue = (234, "true", true)
print(tripleValue.self)
print(tripleValue.0)
print(tripleValue.2)


//Optionals
//  '!' <- means i am telling to computer that i have inistaized it or i am foring it to work
// or said force unrapping it.


var str1 : String?  //<- we can take value later
str1 = "Hello"

if  str1 != nil{
    print(str1)   // it wont print if value is not given
}

// other way of handling optional
if let name = str1 {  // As let is for fix -> if str1 doesnt have a value then name wont be created
    print(name)   // it wont print anything
}

//Funtions

func sampleFunctionForGuard(strName : String?){
    ///statement
}


