import UIKit

// To make the long string readable instead instead of using one pair of quotes
// You can use triple-quotes to be allow the string to have multiple lines

// SINGLE QUOTE STRING
let message = "This constant represents a message showing you how one quote string looks like compare to a triple-quotes string"

//TRIPLE QUOTE STRING
let message2 = """
This constant represents a message
showing you how one quote string looks
like compare to a triple-quotes string
"""

// STRING INTERPOLATION
//  Python = {} , Swift = /()

//let name = "Kobe"
//let team = "Lakers"
//var firstJerseyNumber = 8
//var secondJerseyNumber = 24
//var numberOfChampionshipsRings = 5
//
//print("I grew up watching \(name). I saw all the all \(numberOfChampionshipsRings) nba titles that he won.")
//
//print("He played all his career with the \(team) and wore the jersey numbers of \(firstJerseyNumber) and \(secondJerseyNumber).")


// Mathematics Interpolation
var firstName = "Joshua"
var currentYear = 2024

var amount = 100
let birthYear = 1994
let birthMonth = 4
let birthDay = 6
print("""
"Hello \(firstName), you are \(currentYear - birthYear) years old today.
""")

print("I have $\(amount) saved up, I need $\(amount * 20) to be able to get the tattoo I want. ")

