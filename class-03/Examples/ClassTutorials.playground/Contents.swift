//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var firstname = "old fashioned"


class Dog {

    var breed: String = ""
    var barkType: String = ""
    var height: Double = 1
    var weight: Int = 0
    var color: UIColor = UIColor.blackColor()
    
    func bark() -> Void {
        println("i'm barking")
    }
    
    func fetch(toy: String) -> Void {
        println("go fetch " + toy)
        print(toy)
    }
}

let sam = Dog()

sam.breed = "Lab"
sam.barkType = "loud"
sam.height = 1
sam.weight = 50

sam.bark()
sam.fetch("newspaper")

let max = Dog()

max.breed = "Yorkie"
max.barkType = "YIPPIE"
max.height = 0.5
max.weight = 7
max.color = UIColor.grayColor()
max.fetch("mailman")

if sam.height == max.height {
    println("we are the same")
}

func helloWorld() -> Void {
    println("Hello world")
}

helloWorld()
