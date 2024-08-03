import UIKit
import Foundation

// -------------- FUNCTIONS


// NEED TO DECLARE the "PARAMETER" and the "TYPE"
func sayHello(name: String){
    print("Hello \(name)!!")
}
sayHello(name: "Khai")

// DEFINE PARAMETERS = name
// PASS IN ARGUMENTS = "Khai"



func printDescriptionWithWidth( w: Int, h: Int){
    print("My width is \(w) and my height is \(h)")
}

printDescriptionWithWidth(w: 230, h: 73)



func mathProblem(firstNum: Double, secondNum: Double, yourAnswer: Double){
    if (firstNum * secondNum) != yourAnswer{
        print("Wrong Answer")
    }else{
        print("Good job!")
    }
}
mathProblem(firstNum: 5, secondNum: 10, yourAnswer: 50)



// --------------------- CONSTANTS vs VARIABLES

//Strings, Arrays, Dictionaries, Bool, and Ints are ** VALUE TYPES **.
//Classes and functions are ** REFERENCE TYPES **

var myInt = 1
func changeMyInt(someInt: Int){ // FUNC assigns the value to a CONST BY DEFAULT
    var someInt = someInt // we need to declare the value as "Variable"
    someInt = someInt + 1 // NOW we can update it
    print(someInt)
}

changeMyInt(someInt: myInt)
// OUTPUT - 2  INSIDE OF THE FUNC
print(myInt) // myInt = 1  OUTSIDE OF THE FUNC

// FUNC changes values of an INT its changes will not persist OUTSIDE OF THE FUNC



// ------------------ IN - OUT PARAMETERS
// if we want to change the value of an int IN and OUT side of the function
// WE NEED TO SPECIFY that our parameter is an IN-OUT


var myInteger = 4
func changeMyInteger(someInteger: inout Int){ // SPECIFYING in-out INT ( "inout INT" )
    someInteger = someInteger + 10
    print(someInteger)
}

changeMyInteger(someInteger: &myInteger) // PASS VARIABLE "&" symbol (&variable)
print(myInteger)


var currentYear = 2024
var birthYear = 1994
func yourAgeIs(birthYear: inout Int){
    var yourAge = currentYear - birthYear
    print(yourAge)
    
}

yourAgeIs(birthYear: &birthYear)




// ------------------ DEFAULT PARAMETERS VALUES

func sayHi(name: String = "Buddy"){// option 1 -------  default parameter
    print("Hey \(name)")
}
sayHi(name: "Yoda") //  option 2 ----- default parameter



// ------------------ RETURN

// We have to specify in our function declaration that we are going to return an instance of a String Type. This is a binding contract, Swift will throw us an error when we construct our code in a way where an instance of a String Type might not return.

func hello(name:String = "Sir") -> String {
    return "Good Morning \(name)"
}

var greeting: String
greeting = hello()
print(greeting)


func mathTest(num1: Int, num2: Int) -> Int{
    var yourAnswer = num1 * num2
    return yourAnswer
}

var result: Int
result = mathTest(num1: 2, num2: 4)
print(result)



func whatsMyAge(birthYear : Int) -> Int{
    var currentYear = 2024
    var my_age = currentYear - birthYear
    return my_age
}

var ageResult: Int
ageResult = whatsMyAge(birthYear: 1994)
print("You are \(ageResult) years old")


func whatsTheTotal(num1: Int, num2: Int) -> Int{
    var total = num1 + num2
    print("This is the total \(total)")
    return total
}

whatsTheTotal(num1: 10, num2: 25)


/// ------------------ OPTIONAL TYPE

// / We are declaring a function named lookForSomethingIn and declaring two parameters.
// The first parameter will be an instance of Dictionary, with keys being instances of String
// and values being instances of Int.
// The first parameter has no external name but it has an internal name of dictionary.
// The second parameter will be an instance of a String.
// It has an external name of forKey and an internal name of key.
// This function promises to return an Optional Type that can either be nil or hold an instance of Int.

func lookForSomethingIn(dictionary:[String: Int], forKey key:String) -> Int? {
    if let value = dictionary[key]{
        return value
    }else{
        return nil
    }
}

var playersNumbers = ["KD": 7, "Curry": 30]
var jerseyNumber = lookForSomethingIn(dictionary: playersNumbers, forKey: "KD")
if let num = jerseyNumber{
    print(num)
}


func whatBrandIsThatShoe(dictionaries:[String:String], nameOfShoes key: String ) -> String?{ // to have an option of returning must include "?" symbol
    if var shoeModel = dictionaries[key]{
        return shoeModel
    }else{
        return nil
    }
}

let shoeByNames = ["KD": "Nike", "Curry": "Underarmour", "Bad Bunny": "Adidas"]
var shoeName = "Curry"
var finalResult = whatBrandIsThatShoe(dictionaries: shoeByNames, nameOfShoes: shoeName)

if let answer = finalResult{
    print(answer)
}



func whatIsThePriceOfThatFruit(dictionary: [String: Double], key: String) -> Double?{
    if var value = dictionary[key]{
        return value
    }else{
        return nil
    }
}

var fruitDict = ["Apple": 2.00, "Pineapple": 5.00, "Kiwi": 1.50]
let fruitIWant = "Kiwi"
var howMuchItCost = whatIsThePriceOfThatFruit(dictionary: fruitDict, key: fruitIWant)

if var fruitPrice = howMuchItCost{
    let fPrice = String(format: "%.2f", fruitPrice)
    print(fPrice)
}

// PRINT OR RETURN 2 decimals after period using | String(format: "%.2f", var Name) |
 


// ---------------- SCOPE

// Every time we type {} we can think of it as creating a new inner scope within the current scope.
// The inner scopes will have access to the outer scopes while outer scopes do not have access to inner scopes.


var myNum = 1
func addNum(){
    myNum += 20
}

print(myNum) // output = 1
addNum()
print(myNum) // output = 21



// ------------ FUNCTIONS TYPE
    // We can even have functions return functions! We can then indicate what that returned function's parameters and return type would be. For example, here we have a function where we purchase a bike, which returns the cycle function, which accepts an integer and returns a string.

func buyBicycle(cost: Int) -> (Int) -> String {
    print("You just paid $\(cost) for your new bike!")
    func cycle(miles: Int) -> String {
        return "Have a great ride! See you in \(miles) miles!"
    }
    return cycle
}
// predict the output before running this code in your playground
print(buyBicycle(cost: 500)(30))

// myPrediction
//("You just paid $500 for your new bike!")
//Have a great ride! See you in 30 miles!
// perfect!!!

// --------------- PRACTICE with tuples return MULTIPLE VALUES

func maxMinAvg(arr: [Int]) -> (max: Int, min: Int, avg: Int) {
    var currentMax = arr[0]
    var currentMin = arr[0]
    var currentAvg = arr[0]
    var sum = 0
    var counter = 0
    // ===================== GETTING THE AVG
    while counter < arr.count{
        var newVal = arr[counter]
        sum += newVal
        counter += 1
    }
    currentAvg = sum / arr.count
    print("AVG \(currentAvg) ")
    
    
    for value in arr[0..<arr.count]{
        // ===================== GETTING THE MAX
        if value == arr.max(){
            currentMax = value
            print("MAX \(currentMax)")
            // ===================== GETTING THE MIN
        }else if  value == currentMin{
            currentMin = value
            print("MIN \(currentMin)")        }
    }
    return (currentMax, currentMin, currentAvg)
}
var answer = maxMinAvg(arr: [10,40,50,100])
print(answer)


// --------------- FUNCTION Overloading
// Func are indentified by their TYPE not their NAME
// We can use two functions with the same name

func info(input:Int){
    if input > 100 {
        print("\(input) is greater than 100")
    }else{
        print("\(input) is less than 100")
    }
}


func info (input: [Int]){
    if input.count > 100{
        print("This arr is longer than 100")
    }else{
        print("This arr of \(input.count) is shorter than 100")
    }
}

info(input: 50)
info(input: [1,2,3,4])



// ------------- VIDEO Explanation

func askQuestion(){
    print("How are you?")
}

func itemPrice(firstDict: [String:Double], firstKey key: String) -> Double?{
    if var myKey = firstDict[key]{
        return myKey
    }else{
        return nil
    }
}

var items = ["Milk": 8.00, "Pizza": 12.99, "Cheesecake": 8.98]
var myFunc = itemPrice(firstDict: items, firstKey: "Pizza")

if var myFunc1 = myFunc{
    print("$\(myFunc1)")
}
