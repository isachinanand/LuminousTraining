//
//  SIOTP.swift
//  LuminousTraining
//
//  Created by Sachin Anand on 24/06/19.
//  Copyright © 2019 Himanshu Singh. All rights reserved.
//

import Foundation
class OTPManager{
    var isOTPVerified = false
    var OTPgenerated = 0000
    var consumerToBeEdited : Consumer?
    var productToBeEdited : Product?
    func generateOTP(consumer:Consumer){
        self.consumerToBeEdited = consumer
        var fourDigitNumber: String {
            var result = ""
            repeat {
                // Create a string with a random number 0...9999
                result = String(format:"%04d", arc4random_uniform(10000) )
            } while result.count < 4
            OTPgenerated = Int(result) ?? 0000
            return result
        }
        sendOTPatPhone(phone: consumer.phone, OTP: OTPgenerated)
    }
    private func sendOTPatPhone(phone: Phone,OTP: Int){
        // The OTP is sent at consumer's mobile phone
    }
    func verifyOTP(code:Int)->Bool
    {
        isOTPVerified = (code==OTPgenerated)
        return isOTPVerified
    }
    func editConsumerProduct()->Consumer{
        return consumerToBeEdited!
       
    }
  
}
