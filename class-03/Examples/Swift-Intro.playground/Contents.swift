
//: # Swift Intro
//: Simple examples of important concepts

import UIKit
import XCPlayground
//: var vs let

var firstName = "Cory"
let lastName  = "Wiles"

firstName = "Erin"

//: Classes

class Person {

    var firstName: String = ""
    var lastName: String = ""
    var favoriteColor: UIColor = UIColor.clearColor()
    var age: Int = 0
}

let cory = Person()

cory.firstName = "Cory"
cory.lastName = "Wiles"
cory.favoriteColor = UIColor.blueColor()
cory.age = 36

var erin = Person()

erin.firstName = "Erin"
erin.lastName = "Wiles"
erin.favoriteColor = UIColor.purpleColor()

//cory = erin
erin = cory

//: Methods

class PersonAdvanced {

    var firstName: String = ""
    var lastName: String = ""
    var favoriteColor: UIColor = UIColor.clearColor()
    
    func sayHello() -> Void {
        println("Hello " + firstName + " " + lastName)
    }
    
    func fullName() -> String {
        return firstName + " " + lastName
    }
}

let advanced = PersonAdvanced()

advanced.firstName = "Zoe"
advanced.lastName = "Wiles"
advanced.favoriteColor = UIColor.redColor()

advanced.sayHello()
println("Full name is returned " + advanced.fullName())

//: Optionals and Unwrapping

let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()
// convertedNumber is inferred to be of type "Int?", or "optional Int"

let helloWorld: String = "Hello World"
let convertedHellWorld = helloWorld.toInt()
// converted to nil because it is optional (implied Int?)

var favoriteSong: String?
var favoriteFood: String?

// println("My favorite song is " + favoriteSong!)

if favoriteSong != nil {
    println("My favorite song is " + favoriteSong!)
} else {
    println("The favorite song is nil")
}

favoriteSong = "Summer Wind"

if favoriteSong != nil {
    println("My favorite song is " + favoriteSong!)
} else {
    println("The favorite song is nil")
}

if let myFavoriteFood = favoriteFood {
    println("My favorite food is " + myFavoriteFood)
} else {
    println("The favorite food is nil")
}

favoriteFood = "Pizza"

if let myFavoriteFood = favoriteFood {
    println("My favorite food is " + myFavoriteFood)
} else {
    println("The favorite food is nil")
}

//: Cool Stuff

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))
XCPShowView("Container View", containerView)

let circle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
circle.center = containerView.center
circle.layer.cornerRadius = 25.0

let startingColor = UIColor(red: (253.0/255.0), green: (159.0/255.0), blue: (47.0/255.0), alpha: 1.0)
circle.backgroundColor = startingColor

containerView.addSubview(circle);

let rectangle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
rectangle.center = containerView.center
rectangle.layer.cornerRadius = 5.0

rectangle.backgroundColor = UIColor.whiteColor()

containerView.addSubview(rectangle)

UIView.animateWithDuration(2.0, animations: { () -> Void in
    let endingColor = UIColor(red: (255.0/255.0), green: (61.0/255.0), blue: (24.0/255.0), alpha: 1.0)
    circle.backgroundColor = endingColor
    
    let scaleTransform = CGAffineTransformMakeScale(5.0, 5.0)
    
    circle.transform = scaleTransform
    
    let rotationTransform = CGAffineTransformMakeRotation(3.14)
    
    rectangle.transform = rotationTransform
})



