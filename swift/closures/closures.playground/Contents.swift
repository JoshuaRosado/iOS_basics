import UIKit

// ------- CLOSURES

//Simply, what are closures?
//
//Closures are variables that hold code
//
//Remember that while an integer holds the number 300, closures hold lines of swift code
//Closures also capture the environment where they are created! This means that they can take a copy of the values used inside of them.
//
//UIKit asks you to write closures to match its needs - so we need to understand how they work.


// ==== Closure Example #1 - UIKit
//make the opacity completely transparent or alpha = 0

let myView = UIView() //declared outside of the closure
UIView.animate(withDuration: 0.5) {
    myView.alpha = 0 // but it used it inside the closure
}
//UIView is an iOS datatype in UIKit that represents the most basic type of UI Container.
//The UIView class has a static method called animate that let's you change the way the interface looks using animation


//Capturing the Environment
//
//****
// Automatically capturing a closure's environment is helpful. The only issue we sometimes run into is if some object (Object A), stores a closure as a property, and that property also references object A. This would lead to a Strong reference cycle or retain cycle - which leads to unhappy users due to bad performance.




// ==== Closure Example #2 - Functions as Types

// A closure is a function that can be passed around


//option 1 ( function )
func isGreaterThanThree(number: Int) -> Bool{
    if number > 3{
        return true
    }
    return false
}
// option 2 (Closure)
//var myFunction :((Int) -> Bool)


var myFunction :((Int) -> Bool) = { number in
    if number > 3 {
        print(3)
        return true
    }
    return false
}
print(myFunction(34))



//Now, myFunction variable is exactly equivalent to the function isGreaterThanThree


// Difference between these 2 statements
print(myFunction(34))
print(isGreaterThanThree(number: 34))

//Answer - While one is a function that is defined, the other is a function assigned to a variable.

// Personal Practice

var name = "Leya"
var last_name = "Rosado"
var age = 30
var myFunc: ((String, String, Int) -> Bool) = { name, last_name, age in
    if name.count > 3 && last_name == "Rosado" && age >= 30 {
        print("This is correct!")
        return true
    }
    return false
}
print(myFunc(name, last_name, age))
print(myFunc("Joshua", "Olivenca", 29))


// ==== Closure Example #3 - Filtering Numbers From a List

//learn about passing a function as a parameter
//practice assigning a function to a variable

//We will give our function an array of numbers, and ask for all the numbers greater than 3 (the condition) to be returned in an array.
//
//Here's the function that we plan to implement

//func filterGreaterThanValue( value : Int, numbers: [Int]) -> [Int]{
//    return []
//}
//
//let filteredList = filterGreaterThanValue(value: 3, numbers: [1,2,3,4,5,10])


func filterGreaterThanValue( value : Int, numbers: [Int]) -> [Int]{
    var filteredSetOfNumbers = [Int]() // empty array
    for num in numbers{ // for each number in the array
        if num > value { // if the number is greater than value (3)
            filteredSetOfNumbers.append(num) // add number to empty list
        }
    }
    return []
}

let filteredList = filterGreaterThanValue(value: 3, numbers: [1,2,3,4,5,10])

//This code works. But, what if we wanted to get numbers that are less than 5?
//
//We would have to change our value and we would have to go into our function and change the greater-than sign to less-than. Then, we would change the function name to filterLessThanValue

// USING closures

//func filterWithPredicateClosure( closure: (Int) -> Bool, numbers: [Int]){
//    return []
//}


// PASSING A FUNCTION AS A PARAMETER

// input Int (condition check), input array of Int, returns a filter array of Int
func filterWithPredicateClosure( closure: (Int) -> Bool, numbers: [Int]) -> [Int]{
    var filteredNumbers = [Int]() // empty array for filtered numbers
    for num in numbers{ // for each number in array
        if closure(num) { // if input closure(Int) is true
            filteredNumbers.append(num) // add numbers to empty array
        }
    }
    return filteredNumbers // return new filtered array
}

func greaterThanThree(value: Int) -> Bool {
    return value > 3 // return true if value Int is greater than 3
}

func divisibleByFive(value: Int) -> Bool {
    return value % 5 == 0 // remainder of division of 5 if 0 it is divisible
}

// pass greaterThanThree() as a function
// pass divisibleByFive() as a function

let filteredArray = filterWithPredicateClosure(closure: greaterThanThree(value:), numbers:[10,5,1,2,0])

//let filteredArray = filterWithPredicateClosure(closure: divisibleByFive(value:), numbers:[10,5,1,2,0])

print(filteredArray)




// EXAMPLE PRACTICE

// Closures are simply a function that can be passed around
// Sometimes this can be call LAMBDA in other languages

//----FUNCTION
func isGreaterThanFour (number:Int) -> Bool {
    if number > 4 {
        return true
    }
    return false
}

// The function isGreaterThanFour from above is EQUIVALENT to our 
// variable myFunction1 from below

//----CLOSURE
var myFunction1: ((Int) -> Bool) = { number in // --(syntax added (parameter = number in)
    if number > 4 {
        return true
    }
    return false
}

myFunction1(5)



let result = myFunction1(5)
print(result)
