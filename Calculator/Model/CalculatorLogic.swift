//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Ebubechukwu Dimobi on 24.07.2020.
//  Copyright © 2020 blazeapps. All rights reserved.
//

import UIKit

struct CalculatorLogic {
    
    
    mutating func setNumber(with number: Double){
        
        self.number = number
    }
    
    private var number: Double?
    
    private var intermediateCalculation: (symbol: String, firstNumber: Double)?
    
    
    mutating func calculate ( with calcMethod: String) -> Double? {
        
        if let n = number{
            switch calcMethod {
            case "+/-":
                return -1 * n
            case "%":
                return n / 100
            case "AC":
                return 0
            case "+","-","×","÷":
                intermediateCalculation = (symbol: calcMethod, firstNumber: n )
            case "=":
                return performTwoNumCalculation(secondNumber: n)
            default:
                print("error")
                return nil
            }
        }
        
            return nil
        
        
        
    }
    
    private mutating func performTwoNumCalculation(secondNumber: Double) -> Double? {
        
        if let n1 = intermediateCalculation?.firstNumber, let operation = intermediateCalculation?.symbol{
            
            
            switch operation {
            case "+":
                intermediateCalculation = nil
                return n1 + secondNumber
            case "-":
                intermediateCalculation = nil
                return n1 - secondNumber
            case "×":
                intermediateCalculation = nil
                return n1 * secondNumber
            case "÷":
                intermediateCalculation = nil
                return n1 / secondNumber
            default:
                fatalError("The operation does not match any of these cases")
            }
            
        }
        
       return nil
    }
    
}
