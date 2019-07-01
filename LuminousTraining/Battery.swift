//
//  Battery.swift
//  LuminousTraining
//
//  Created by Sachin Anand on 24/06/19.
//  Copyright © 2019 Himanshu Singh. All rights reserved.
//

import Foundation
class Battery {
    var chargingTime: Int
    var availableBack: Int
    init(chargingTime:Int,availableBack:Int) {
        self.availableBack = availableBack
        self.chargingTime = chargingTime
        
    }
}
