import UIKit
import Foundation

// ==== CLASSES

//''Learning Objectives:
//
//Create a class in Swift
//Define and utilize stored properties and methods
//Define initialization in Swift


// instances = objects

//class Person { // class
//    var species = "H. Sapiens" // property
//}
//
//var myPerson: Person = Person() // creating our own instance
//print(myPerson.species) // print the property of our instance
//


// -- myPractice with Classes

class Pizza{
    var cheese = "Parmesan"
    var sauce = "Red sauce"
    var toppings = ["Pepperoni", "Onions", "Bacon", "Roasted Peppers"]
    var crust = "Thin Crust"
 }

var myPizza: Pizza = Pizza()
myPizza.crust = "Brick Oven" // update crust property
print(myPizza.crust)
print(myPizza.toppings[0]) // first value of the toppings array


// ==== METHODS
// While "Properties" define what an instance "knows"
// "Methods" define what an instace "can do".


//class Person { // class
//    var species = "H. Sapiens" // property
//    func speak() {
//        print("Hello!, I am a \(self.species)") // refer to the properties of instance as through "self"
//    }
//}
//var myPerson: Person = Person() // creating our own instance
//myPerson.speak()
//print(myPerson.species) // print the property of our instance


// --- myPractice with Methods

class Computer {
    var computerBrand = "Macbook Pro"
    func startUpdate(){
        print("My \(computerBrand) is initializing new software update")
    }
}

var myComputer = Computer()
myComputer.startUpdate()



// ==== METHOD PARAMETER NAMES

class User {
    var intelligence = 0
    func studyFor(topic: String, hours: Int){
        print("I am studying \(topic) for \(hours) hours")
    }
}

var user = User()
user.studyFor(topic: "Computer Science", hours: 4)


// --- myPractice with method parameter names

class Driver {
    var mood = "happy"
    func drivingTo( distance: Int, destination: String){
        print("I'm \(mood) because tomorrow we are heading to \(destination). Is a \(distance) mile drive")
    }
}

var driver = Driver()
driver.drivingTo(distance: 840, destination: "New Bern, North Carolina")



// ==== INITIALIZATION

class Person{
    var species = "H. Sapiens"
    var name: String
    init(name:String){
        self.name = name
    }
    func speak(){
        print("Hello! I am a \(self.species) and my is \(self.name)")
    }
}

var myPerson: Person = Person(name: "Luther")
myPerson.speak()


// --- myPractice with Initialzation

class Student{
    var first_name: String
    init(first_name : String){
        self.first_name = first_name
    }
    func introduction(){
        print("Hello everybody, my name is \(first_name)")
    }
}

var newStudent = Student(first_name: "Khai")
newStudent.introduction()


// Explanation practice


class Employee{
    var name = ""
    var salary = 0
    var role = ""
    func work(){
        print("Doing something")
    }
}

let emp: Employee = Employee()

emp.salary = 100000
emp.role = "iOS Developer"
emp.name = "Cataleya"
emp.work()

let emp2: Employee = Employee()
 
emp2.name = "Khai"
emp2.role = "Data Analyst"
emp2.salary = 80000
emp2.work()
