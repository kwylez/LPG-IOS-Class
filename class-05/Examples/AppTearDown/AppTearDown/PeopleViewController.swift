//
//  PeopleViewController.swift
//  AppTearDown
//
//  Created by Cory D. Wiles on 4/22/15.
//  Copyright (c) 2015 Cory Wiles. All rights reserved.
//

import UIKit

let PeopleViewControllerCellIdentifier: String = "PeopleViewControllerCellIdentifier"

class PeopleViewController: UITableViewController {

    lazy var people: [Person] = {
        
        let cory: Person = Person()
        let erin: Person = Person()
        
        cory.firstName = "Cory"
        cory.lastName = "Wiles"
        cory.favoriteColor = UIColor.blueColor()
        
        erin.firstName = "Erin"
        erin.lastName = "Wiles"
        erin.favoriteColor = UIColor.purpleColor()
        
        let peeps: [Person] = [cory, erin]
        
        return peeps
    }()
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        self.title = "People List"
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier:PeopleViewControllerCellIdentifier)
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 44.0
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.people.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(PeopleViewControllerCellIdentifier, forIndexPath: indexPath) as! UITableViewCell
        let row = indexPath.row
        
        let currentPerson: Person = self.people[row]
        
        cell.textLabel?.text = currentPerson.fullname()
        cell.textLabel?.setTranslatesAutoresizingMaskIntoConstraints(false)
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let currentPerson: Person = self.people[indexPath.row]
        let detailViewController: PersonDetailViewController = PersonDetailViewController(person: currentPerson)
        
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
}
