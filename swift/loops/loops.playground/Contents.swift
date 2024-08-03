import UIKit

// FOR LOOPS & WHILE LOOPS

// We use the for loop when we know beforehand how many times we are going to have to repeat the code while we use the while loop when we don't know how many times we have to run the code

// **** FOR - IN LOOP

// loop from 1 to 5 including 5
//for i in 1...5{
//    print(i)
//}
//// loop from 1 to 5 excluding 5
//for i in 1..<5{
//    print(i)
//}

//var start = 0
//var end = 10
//
//for i in start...end{ // including 5
//    print(i)
//}
//
//var start = 0
//var end = 10
//
//for i in start..<end{ // excluding 5
//    print(i)
//}


//var myArray = [1,2,3,4,5,6]
//
//for i in myArray[0]...myArray[5]{
//    if i % 2 == 1{ // finder the remainder, if i is divided by 2 and equals 1 ( ODD NUM)
//        print("\(i) - Odd")
//    }
//}
//
//
//var fruits = ["apple", "kiwi", "banana"]
//
//for fruit in fruits{
//    if fruit == "apple"{
//        print("I want an \(fruit)")
//    }
//}

//var monthlySpending = ("jan"; 150.00,
//    "feb"; 400.50, "mar"; 240.80}


// **** WHILE LOOP

// for in loop

//for i in 1...5{
//    print(i)
//}

// convert in to a while loop

//var i = 1
//while i < 10 {
//    print("num: \(i)")
//    i = i+1 // every time this while loop runs is adding 1 to i
//}




let sports = ["skatboarding", "surfing", "basketball"]

for sport in sports{
    print("\(sport.capitalized) is my favorite sport")
}

// Print something 5 times
for _ in 1...5{
    print("Win!")
}
