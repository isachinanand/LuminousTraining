//
//  User.swift
//  LuminousTraining
//
//  Created by Sachin Anand on 24/06/19.
//  Copyright © 2019 Himanshu Singh. All rights reserved.
//

import UIKit

class User {
    var name : String
    var phone : Phone
    var products = [Product]()
    init(name:String,phone:Phone)
    {
        self.name = name
        self.phone = phone
    }
    

}
