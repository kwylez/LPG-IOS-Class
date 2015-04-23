//
//  PersonDetailViewController.swift
//  AppTearDown
//
//  Created by Cory D. Wiles on 4/22/15.
//  Copyright (c) 2015 Cory Wiles. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {

    var nameLabel: UILabel
    var favoriteColorLabel: UILabel
    var person: Person?
    
    required init(coder aDecoder: NSCoder) {

        self.nameLabel = UILabel()
        self.favoriteColorLabel = UILabel()
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        self.nameLabel = UILabel()
        self.favoriteColorLabel = UILabel()
        
        NSLog("am i called")
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    convenience init(person: Person) {

        self.init(nibName: nil, bundle: nil)
        self.person = person
    }
    
    override func loadView() {
        
        self.view = UIView(frame: UIScreen.mainScreen().bounds)
        self.view.backgroundColor = UIColor.whiteColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.nameLabel.frame = CGRectMake(10, 60, 200, 75)
        self.favoriteColorLabel.frame = CGRectMake(10, 100, 200, 75)
        
        self.nameLabel.text = self.person?.fullname()
        self.favoriteColorLabel.text = self.person?.favoriteColor.description
        
        self.view.addSubview(self.nameLabel)
        self.view.addSubview(self.favoriteColorLabel)
        // Do any additional setup after loading the view.
    }
}
