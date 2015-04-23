//
//  FirstTabViewController.swift
//  AppTearDown
//
//  Created by Cory D. Wiles on 4/22/15.
//  Copyright (c) 2015 Cory Wiles. All rights reserved.
//

import UIKit

class FirstTabViewController: UIViewController {

    override func loadView() {
        
        self.view = UIView(frame: UIScreen.mainScreen().bounds)
        self.view.backgroundColor = UIColor.purpleColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First tab"
        // Do any additional setup after loading the view.
    }
}
