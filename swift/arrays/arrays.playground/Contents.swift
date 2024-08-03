import UIKit
import Foundation


// array
//var toDoList : [String] = ["Learn iOS", "Build the next Flappy Bird", "Retire in Bali"]

// empty array


//var toDoList : [String] = [String]() // EMPTY array option 1
//// initializing the array
//// ALTERNATIVE syntax that you may see:
//
//var alternativeToDoList = Array<String>() // EMPTY array option 2
//// how to add elements into the empty array
//toDoList.append("Learn iOS")
//toDoList.append("Build the next Flappy Bird")
//toDoList.append("Retire in Bali")
//
//print(toDoList)
//
//var languages : [String] = ["Python", "Swift", "Javascript"]
//var programmingLanguages: [String] = [String]()
//
//programmingLanguages.append("Python")
//
//print(programmingLanguages)


//Now if we are initializing an instance of an Array Type that will hold onto instances of the String Type, we can get rid of the type annotation because Swift will be able to infer its type with [String]() just like value types.


var toDoList = [String]()
toDoList.append("Learn iOS")
toDoList.append("Build the next Flappy Bird")
toDoList.append("Retire in Bali")
print(toDoList)

// ACCESSING ARRAYS

var arrayOfInts = [1,2,3,4,5]
var arrayOfStrings = ["chicken", "steak", "fish"]
var emptyArray = [String]()

print("There are \(arrayOfInts[4]) Ints")

print("\(arrayOfInts[0...4])") // using from STARTindex ... ENDindex
// output [1, 2, 3, 4, 5]

print("\(arrayOfInts[0...2])")
// output [1, 2, 3]


// ACCESSING AND SETTING a specific value to a particular index
var arr = [1,2,3,4]
arr[3] = 450
print(arr)
// [1, 2, 3, 450]


// ***** METHODS AND PROPERTIES

// -------- append()

var nums = [1,2,3,4,5]
nums.append(6)
print(nums)
// output [1,2,3,4,5,6]


// -------- remove()
// remove(at: INDEX)

var nums2 = [1,2,3,4,5]
nums2.remove(at:4) // remove(at: INDEX)
print(nums2)
// output [1, 2, 3, 4]


// -------- removeLast()

var nums3 = [1,2,3,4,5]
let popped = nums3.removeLast()
print(nums3)
// output [1, 2, 3, 4]



// -------- insert()
// insert("value" , at: INDEX)

var nums4 = [1,2,3,4,5]
nums4.insert(6, at: 5) // insert("value" , at: INDEX)
print(nums4)
// output [1, 2, 3, 4, 5, 6]


// -------- count
// Swift - Count / Python - Length
// count of the elements inside the array

var nums5 = [1,2,3,4,5]
nums5.insert(6, at:5)// insert("value" , at: INDEX)
print(nums5.count) // print COUNT of the array
// output 6



// ***** Looping Through Arrays

var starters = ["Fisher", "Kobe", "Gasol", "Bynum", "World Peace"]

for starter in starters{
    print(starter)
}

// Using a range as well aling with the count property

for i in 0..<starters.count {
    print(starters[i])
}


var codingLanguages = ["Swift", "Python", "Javascript", "Java"]

for i in 0...codingLanguages.count - 1{
    print(codingLanguages[i])
}






var primeNumbers = [2,3,5,7]
var artists = ["Kendrick Lamar", "Bad Bunny", "Bob Marley","Cultura Profetica"]
artists.append("Coldplay")
print(artists)
artists[4] = "Adele"
print(artists)

primeNumbers.append(800)
print(primeNumbers)

for i in primeNumbers{
    print(i)
}




// practice



var arrayElements = ["Python", "Swift", "Javascript"]

arrayElements.append("Java")
arrayElements.remove(at: 2)
arrayElements.insert("Goland", at: 3)
print(arrayElements)


var emptyArr = [String]()

emptyArr.append("Pizza")
emptyArr.append("Pasta")
emptyArr.append("Wine")

print(emptyArr)

for element in emptyArr{
    print(element)
}

