//
//  ModalViewController.swift
//  AppTearDown
//
//  Created by Cory D. Wiles on 4/22/15.
//  Copyright (c) 2015 Cory Wiles. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    let dismissButton: UIButton = UIButton.buttonWithType(UIButtonType.System) as! UIButton
    
    override func loadView() {

        self.view = UIView(frame: UIScreen.mainScreen().bounds)
        self.view.backgroundColor = UIColor.greenColor()
    }
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        self.title = "Modal View Controller"
        self.dismissButton.setTitle("Dismiss", forState: UIControlState.Normal)
        self.dismissButton.addTarget(self, action: "dismissView:", forControlEvents: .TouchUpInside)
        
        self.dismissButton.frame = CGRectMake(0, 0, 150, 50)
        
        self.dismissButton.center = self.view.center
        
        self.view.addSubview(self.dismissButton)
    }
    
    func dismissView(sender: UIButton!) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
