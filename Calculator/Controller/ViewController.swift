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
    
    private var isFinishedTypingNUmner: Bool = true
    
    private var displayValue : Double {
        get {
            guard let num = Double(displayLabel.text!) else  {
                fatalError()
            }
            
            
            return num
        }
        
        set {
            displayLabel.text = String(newValue)
        }
        
    }
    
   private var calculatorLogic = CalculatorLogic()
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        isFinishedTypingNUmner = true
        
        if let calcMethod = sender.currentTitle{
            
            
            calculatorLogic.setNumber(with: displayValue)
            if let result = calculatorLogic.calculate(with: calcMethod){
                
                displayValue = result
            }
            
        }
        
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        if let numValue = sender.currentTitle{
            
            
            if isFinishedTypingNUmner{
                
                displayLabel.text = numValue
                isFinishedTypingNUmner = false
            }else {
                if numValue == "."{
                    
                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt{
                        return
                    }
                    
                }
                displayLabel.text = displayLabel.text! + numValue
            }
            
            
        }
        
        
        
        
        
        
        
    }
    
}



