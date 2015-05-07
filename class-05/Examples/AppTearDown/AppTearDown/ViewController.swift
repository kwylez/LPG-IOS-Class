//
//  ViewController.swift
//  AppTearDown
//
//  Created by Cory D. Wiles on 4/22/15.
//  Copyright (c) 2015 Cory Wiles. All rights reserved.
//

import UIKit

let ViewControllerCellIdentifier: String = "CellIdentifier"

class ViewController: UITableViewController {

    let exampleTypes: [String] = ["People", "Modal", "UINavigationController", "TabbarController"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        self.title = "App Tear Down"

        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier:ViewControllerCellIdentifier)
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 44.0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.exampleTypes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier(ViewControllerCellIdentifier, forIndexPath: indexPath) as! UITableViewCell
        let row = indexPath.row

        cell.textLabel?.text = self.exampleTypes[row]
        cell.textLabel?.setTranslatesAutoresizingMaskIntoConstraints(false)
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        switch indexPath.row {
        case 0:
            let peopleViewController = PeopleViewController()
            self.navigationController?.pushViewController(peopleViewController, animated: true)
        case 1:
            let modalViewController = ModalViewController()
            self.navigationController?.presentViewController(modalViewController, animated: true, completion: nil)
        case 3:

            let firstController: FirstTabViewController = FirstTabViewController()
            let secondController: SecondTabViewController = SecondTabViewController()
            let tabbarController: UITabBarController = UITabBarController()
            
            tabbarController.viewControllers = [firstController, secondController]
            
            self.navigationController?.pushViewController(tabbarController, animated: true)
            
        default:
            println("nothing found")
        }
    }
}

