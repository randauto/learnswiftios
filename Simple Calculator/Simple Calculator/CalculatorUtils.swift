//
//  CalculatorUtils.swift
//  Simple Calculator
//
//  Created by Tuan Le Quoc  on 9/7/18.
//  Copyright © 2018 NGUYEN THE ANH. All rights reserved.
//

import Foundation

class CalculatorUtils {
    
    func cong(a : Int, b: Int) -> Int {
        return a + b
    }
    
    func tru(a : Int, b : Int) -> Int {
        return a - b
    }
    
    func nhan(a : Int, b : Int) -> Int {
        return a * b
    }
    
    func chia(a : Int, b : Int) -> Double {
        return Double(a / b)
    }
    
    func phanTram(a : Int, b: Int) -> Double {
        return Double(a % b)
    }
}
