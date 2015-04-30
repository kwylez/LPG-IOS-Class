//: # Swift Intro
//: Simple examples of important concepts

import UIKit

//: Optionals and Unwrapping

let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()
// convertedNumber is inferred to be of type "Int?", or "optional Int"

let helloWorld: String = "Hello World"
let convertedHellWorld = helloWorld.toInt()

println(convertedHellWorld)
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
