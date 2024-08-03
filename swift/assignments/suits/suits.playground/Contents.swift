import UIKit
import Foundation

// Write a Foor-In Loop

// Given the following three variables write a for-in loop that will have the following output in the Assistant Editor.

let suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
let cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
var deckOfCards = [String: [Int]]()
var counter = 0

for i in 0..<suits.count{ // for each index in array of SUITS
    deckOfCards[suits[counter]] = cards // add index of SUITS as a KEY in the dictionarie deckOfCards with the array of CARDS being the VALUE of each KEY
    counter += 1 // counter for the SUITS index to add all elements in the array since the VALUE of every KEY is going to be the same, the value does not need a counter
}

print(deckOfCards)


// Our result should look something like the following:

//["Clubs": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], "Diamonds": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], "Hearts": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], "Spades": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]]




// Should you expect the suits to print in the exact order you specified?
 
// var myResponse = " Dictionaries don't have an order, every time it prints the order changes. You sort the keys or values if you want to have a set order"
