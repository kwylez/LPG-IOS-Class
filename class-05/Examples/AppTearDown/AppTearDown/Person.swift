//
//  Person.swift
//  AppTearDown
//
//  Created by Cory D. Wiles on 4/22/15.
//  Copyright (c) 2015 Cory Wiles. All rights reserved.
//

import UIKit

class Person: NSObject {
   
    var firstName: String = ""
    var lastName: String = ""
    var favoriteColor: UIColor = UIColor.clearColor()
    
    func fullname() -> String {
        return firstName + " " + lastName
    }
}
