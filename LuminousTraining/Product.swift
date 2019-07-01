//
//  Product.swift
//  LuminousTraining
//
//  Created by Sachin Anand on 24/06/19.
//  Copyright © 2019 Himanshu Singh. All rights reserved.
//

import Foundation
class Product {
    var battery: Battery?
    var productId : Int
    var gridState:Bool?{
        get {
            if self is PCU {
                return true
            } else {
                return false
            }
        }
    }
    var solar:Bool?{
        get{
            if self is Zileo {
                return false
            } else {
                return true
            }
        }
    }
    init(productId: Int) {
        self.productId = productId
    }
    init(productId: Int,battery: Battery) {
        self.productId = productId
        self.battery = battery
    }
}
