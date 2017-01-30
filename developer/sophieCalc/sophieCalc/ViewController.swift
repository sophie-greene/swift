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
    private var userIsIntheMiddleOfTyping = false
    
    @IBOutlet weak private var display: UILabel!
    
    @IBAction fileprivate func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsIntheMiddleOfTyping{
            let currentlyDisplayed = display.text!
            display.text = currentlyDisplayed + digit
        }else{
            display.text = digit
        }
        userIsIntheMiddleOfTyping = true
    }
//computed property
    private var displayValue: Double{
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }
    @IBAction private func mathOperation(_ sender: UIButton) {
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

