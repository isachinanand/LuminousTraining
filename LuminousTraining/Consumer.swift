//
//  Consumer.swift
//  LuminousTraining
//
//  Created by Sachin Anand on 24/06/19.
//  Copyright © 2019 Himanshu Singh. All rights reserved.
//

import Foundation
class Consumer: User {
    override init(name: String, phone: Phone) {
        super.init(name: name, phone: phone)
        
    }
    func addProduct(product:Product) {
        self.products.append(product)
    }
    func removeProduct(product:Product) {
        var index = 0
        for device in products {
            if (device.productId == product.productId) {
                self.products.remove(at: index)
            } else {
                index+=1
            }
        }
        }

}
