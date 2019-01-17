//
//  Wage.swift
//  PriceCalculator
//
//  Created by Admin on 17.01.2019.
//  Copyright © 2019 furrki. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Int, andPrice price: Int) -> Double {
        if wage == 0 {
            return 0.0
        }
        return ceil(Double(price)/Double(wage))
    }
}
