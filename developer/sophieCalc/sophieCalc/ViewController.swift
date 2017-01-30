//
//  ViewController.swift
//  sophieCalc
//
//  Created by Sophie Greene on 29/01/2017.
//  Copyright © 2017 Sophie Greene. All rights reserved.

//all user interface module
import UIKit
//child: parent inheritance 
class ViewController: UIViewController {
    var userIsIntheMiddleOfTyping = false
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsIntheMiddleOfTyping{
            let currentlyDisplayed = display.text!
            display.text = currentlyDisplayed + digit
        }else{
            display.text = digit
        }
        userIsIntheMiddleOfTyping = true
    }

    var displayValue: Double{
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }
    @IBAction func mathOperation(_ sender: UIButton) {
        userIsIntheMiddleOfTyping  = false
        if let mathSymbol = sender.currentTitle{
            if mathSymbol == "π"{
                //display.text = String(M_PI)
                displayValue = M_PI
            }else if mathSymbol=="√"{
                displayValue = sqrt(displayValue)
            }
        }
    }


}

