//
//  ViewController.swift
//  Day5iOSCell
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var personList : [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        // Do any additional setup after loading the view.
    }
    
    private func getData(){
        personList.removeAll()
        personList.append(Person(id: 1, firstName: "Nikita", lastName: "Sandhu", gender: "Female", salary: "12.5"))
        personList.append(Person(id: 2, firstName: "Kamal", lastName: "Kaur", gender: "Female", salary: "10.5"))
    }
}

extension ViewController : UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell", for: indexPath) as! PersonTableViewCell
        
        let person = personList[indexPath.row]
        
        cell.lblFirstName.text = person.firstName
        cell.lblLastName.text = person.lastName
        cell.lblSalary.text = "$ \(person.salary)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100.0)
    }
}
