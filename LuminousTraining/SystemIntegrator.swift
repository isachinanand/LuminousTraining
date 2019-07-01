//
//  SystemIntegrator.swift
//  LuminousTraining
//
//  Created by Sachin Anand on 24/06/19.
//  Copyright © 2019 Himanshu Singh. All rights reserved.
//

import Foundation
class SystemIntegrator : User {
    var OTPmanager = OTPManager()
    var canEditConsumerProduct = false
    var OTP : Int?
    var consumerOfSI : Consumer?
    func canEditProduct() -> Bool {
        return true
    }
    func startEditFlow(consumer:Consumer){
        self.generateOTP(consumer: consumer)
    }
    private  func generateOTP(consumer:Consumer) {
        OTPmanager.generateOTP(consumer:consumer)
        }
    func verifyOTP(OTP:Int){
       canEditConsumerProduct = OTPmanager.verifyOTP(code: OTP)
        if (canEditConsumerProduct) {
            consumerOfSI = OTPmanager.editConsumerProduct()
        }
    }
    
    
}
