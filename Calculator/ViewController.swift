//
//  ViewController.swift
//  Calculator
//
//  Created by Ebubechukwu Dimobi on 24/07/2020.
//  Copyright © 2020 blazeapps. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var isFinishedTypingNUmner: Bool = true
    
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        if let numValue = sender.currentTitle{
            
            
            if isFinishedTypingNUmner{
                
                displayLabel.text = numValue
                isFinishedTypingNUmner = false
            }else {
                displayLabel.text = displayLabel.text! + numValue
            }
            
            
        }
        
        
        
        
        
        
        
    }
    
}

