import UIKit
import Foundation

//Create code to identify palindromes in Swift
//Note: There are multiple ways to solve this problem, feel free to upload multiple versions of your code solving the same thing:
//
// 1. without recursion
// 2. with recursion
// 3. least amount of code possible

//Assignment: write a Swift program that searches for words that are palindromes
// *** a word, phrase, or sequence that reads the same backward as forward, e.g., madam or nurses run. ***
// ----------------------- SOLUTION I

func isPalindromeWord(answer: String){
    let reversed = String(answer.reversed())
    if answer == reversed{
        print("'\(reversed.capitalized)' is a Palindrome word!")
    }else{
        print("Sorry!'\(reversed.capitalized)' is not a Palindrome word")
    }
}

isPalindromeWord(answer: "racecar")


// ----------------------- SOLUTION II


func isPalindromeWordTrue(word: String) -> Bool{
    let reversedWord = String(word.reversed())
    if word != reversedWord{
        print(false)
        return false
    }else{
        print(true)
        return true
    }
}
        
isPalindromeWordTrue(word: "racecar")


// ----------------------- SOLUTION III

var theWord = "racecar" //<-- type your String and find out
if theWord == String(theWord.reversed()){
    print(true) // It will return 'true' if it is a Palindrome Word
}







