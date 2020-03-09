//
//  Person.swift
//  Day5iOSCell
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Person{
    var id : Int
    var firstName : String
    var lastName : String
    var gender : String
    var salary : String
    
    init(id : Int, firstName : String, lastName : String, gender : String, salary : String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.salary = salary
    }
}
