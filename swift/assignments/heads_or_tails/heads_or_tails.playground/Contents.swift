import UIKit
import Foundation

//===================== PART I

//Write functions in Swift with different return types

//In this exercise, we are going to focus on writing clean and organized code using functions! When using functions it is important to be descriptive and to organize your code to have a separation of concerns. Let's see this in action:
//
//Create a function tossCoin() -> String
//Have this function print "Tossing a Coin!"
//Next have the function randomly pick either "Heads" or "Tails"
//Have the function print the result
//Finally, have the function return the result

var heads_or_tails = ["heads", "tails"]
var results = ""


func tossCoin() -> String{ // function named tossCoin, returns a string
    print("Tossing a Coin!")
        if var results = heads_or_tails.randomElement(){ // Optional Binding
            print(results)
            return results
        }
    return results
}

tossCoin()
    
    
    
//===================== PART II

//Now create another function tossMultipleCoins(Int) -> Double
//Have this function call the tossCoin function multiple times based on the Integer input
//Have the function return a Double that reflects the ratio of head toss to total toss

func tossMultipleCoins(IntInput:Int) -> Double{
    var ratio: Double = 0
    var heads:Double = 0
    //    var tails: Double = 0
    for i in 0..<IntInput{ // for each index from 0 to the IntInput we receive from user
        if tossCoin() == "heads"{ // every time tossCoin() result = to "heads"
            heads += 1 // add 1 to variable heads
            print(heads)
        }
    }
            ratio = (heads/Double(IntInput)) // ratio = heads divided by the Int receive from user
            var ratioFraction = ("(\(Int(heads)) out of \(IntInput))")

    print("The ratio of head toss equals to \(ratioFraction) = (%\(String(format:"%.02f", ratio)))")
    return ratio
}

tossMultipleCoins(IntInput: 3)
