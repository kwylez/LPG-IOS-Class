//: ## Homework examples

import UIKit


//: Basic Array

let pets: [String] = ["miss cooper", "toby", "sam", "max"]

let animals = ["dog", "cat"]

//: Basic Dictionary

let person: [String:AnyObject] = ["firstName" : "Cory", "lastName" : "Wiles", "age" : 36, "height" : 5.10, "kids" : ["zoe", "mckinna"], "favoriteColor" : ["blue", "red"]]

let visitor: [String:AnyObject] = ["firstName" : "Cory", "lastName" : "Wiles", "age" : 36, "height": 5.10]

let people: [[String:AnyObject]] = [person, visitor]

//: Array of Objects

class Car {
    
    var make: String = ""
    var model: String = ""
    var year: Int = 0
    var doors: Int = 2
}

extension Car: Printable {
    var description: String {
        return "self.make \(self.make) self.model \(self.model) self.year \(self.year) self.doors \(self.doors)"
    }
}

let honda: Car = Car()

honda.make = "Honda"
honda.model = "Accord"
honda.year = 1994
honda.doors = 4

let bmw: Car = Car()

bmw.make = "BMW"
bmw.model = "M3"
bmw.year = 1995

let toyota: Car = Car()




let cars: [Car] = [honda, bmw]

//: ### Iteration Examples

//: Pets

for pet in pets {
    println("my pet's name is " + pet)
}

//: Dictionary

for (k, v) in person {
    println("my key is \(k) and my value is \(v)")
}

//: Array of Objects

for car in cars {
    println("my car is \(car) and my model is " + car.model)
}
