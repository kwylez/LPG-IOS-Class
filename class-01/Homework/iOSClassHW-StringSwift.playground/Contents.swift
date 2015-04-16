//: Homework - string manipulation and dictionary

import UIKit

// String manipulation

let firstName: String = "Cory"
let lastName: String  = "Wiles"
let fullname: String  = firstName + " " + lastName

var name: String = "Cory"
name = "Erin"

// Creating and iterating over a dictionary

let person: [String:String] = ["firstName" : "Cory", "lastName" : "Wiles", "dob" : "02/03/1979"]

for (key, value) in person {
    print("key \(key) value \(value)")
}


