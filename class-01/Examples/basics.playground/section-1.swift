// Playground - noun: a place where people can play

import UIKit

//// Numbers

let myFloat: Float = 3.141 // 3.14100003242493
let myInteger: Int = -3 // -3
let myUInteger: UInt = 3 // 3
let myDouble: Double = 3.1415927 // 3.1415927
let oneMillion = 1_000_000 // 1,000,000

let someString = "Some string literal value"
let emptyString = "" // or String()
let sparklingHeart = "\u{1F496}" // unicode
let unicodeString = "\u{24}"

//// Arrays and Dictionaries

let shoppingList: [String] = ["Eggs", "Milk"]
var person: Dictionary<String, AnyObject> = [String:AnyObject]()

person["firstName"] = "Cory"
person["lastName"]  = "Wiles"
person["dob"]       = "2/3/79"
person["age"]       = 36

println("\(person)")

var person_2: Dictionary<String, String> = ["firstName" : "Zoe", "lastName" : "Wiles", "dob" :"1/15/14"]

//// Booleans

let orangesAreOrange = true
let turnipsAreDelicious = false

if orangesAreOrange {
    println("oranges are ORANGE")
} else {
    println("oranges are ORANGE")
}

//// Control Structures

var maxScore = 50
var startScore = 0

while (startScore < maxScore) {
    startScore += 1
}

var kittyMaxScore = 150
var kittyStartScore = 0

do {
    println("Hello kitty")
    kittyStartScore += 1
} while (kittyStartScore < kittyMaxScore)


for var index = 0; index < 3; ++index {
    println("index is \(index)")
}

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    println("Hello, \(name)!")
}


