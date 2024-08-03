import UIKit
import Foundation


// DICTIONARIES

// When we want to look for a definition, or value of a particular word in a dictionary, we look up the word in the dictionary and read its definition. A Dictionary Type is a collection type that organizes its content by key-value pairs

// Initializing a Dictionary
//var myDict: [String: Int]

var myArray = [String]() // ------ ARRAY
var myDict = [String: Int]() // ------ DICTIONARY

var dictionary = [
    "Kobe": 24,
    "Lebron": 6,
    "Curry": 30
]

/*var jerseyNumber = dictionary["Kobe"]*/ // OPTIONAL is not unwrapped
var jerseyNumber = dictionary["Kobe"]! // UNWRAP IT
print(jerseyNumber)

// ----------------------------- BEST PRACTICE to use OPTIONAL BINDING

if let jerseyNumber = dictionary["Kobe"]{
    print(jerseyNumber)
}

var dict2 = ["Los Angeles": "Lakers",
             "Orlando": "Magic",
            "Golden State": "Warriors"]

if var teamName = dict2["Golden State"]{
    print(teamName)
}

// ----------------------------- MODIFYING

dict2["Los Angeles"] = "Clippers"
print(dict2)

// ----------------------------- ADDING

dict2["Miami"] = "Heat"
print(dict2)

// ----------------------------- REMOVE

// ----------------------------- option 1
dict2.removeValue(forKey: "Orlando")
print(dict2)

// ----------------------------- option 2
dict2["Miami"] = nil
print(dict2)

// -----------------------------  LOOPING
// (key, value)
for (key , val) in dict2{
    print("The key is \(key) and the value is \(val)")
}

// f we don't provide the ( key, value) then Swift will print out a tuple for each key-value pair. Tuples ARE (key, value) pairs.
for x in dict2{
    print(x)
}




// ----------------------------- PRACTICE

var priceDict = [String: Int]()

priceDict["Macbook Pro"] = 3000
priceDict["Beat Studio"] = 350
priceDict["Ipad"] = 1500

if let headphones = priceDict["Beat Studio"]{
    print(headphones)
}

if let ipad = priceDict["Ipad"]{
    print(ipad)
}

if let macBook = priceDict["Macbook Pro"]{
    print(macBook)
}

