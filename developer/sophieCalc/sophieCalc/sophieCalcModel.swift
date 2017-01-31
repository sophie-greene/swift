//
//  sophieCalcModel.swift
//  sophieCalc
//
//  Created by Sophie Greene on 30/01/2017.
//  Copyright © 2017 Sophie Greene. All rights reserved.
//

import Foundation
class sophieCalcModel{
    
    var accumulater = 0.0
    func setOperand(_ operand: Double){
        accumulater = operand
    }
    var operation: Dictionary<String,Double> = [
        "π":M_PI,
        "e": M_E
    ]
    func performOperation(_ symbol: String){
        switch symbol{
        case "π" : accumulater = M_PI
        case "√" : accumulater = sqrt(accumulater)
        default:break
        }
        
    }
    //  readonly computed property
    var result:Double{
        get{
            return accumulater
        }
        
    }
}
