//
//  ViewController.swift
//  BasicCalculator
//
//  Created by Andrew Seeley on 26/12/2014.
//  Copyright (c) 2014 Seemu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblResult: UITextField!
    
    var result = Float()
    var currentNumber = Float()
    
    var currentOp = String()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentOp = "="
        lblResult.text = ("\(result)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnNumberInput(sender: UIButton) {
        currentNumber = currentNumber * 10 + Float(sender.titleLabel!.text!.toInt()!)
        lblResult.text = ("\(currentNumber)")
    }
    
    @IBAction func btnOperation(sender: UIButton) {
        
        switch currentOp {
            case "=":
                result = currentNumber
            case "+":
                result = result + currentNumber
            case "-":
                result = result - currentNumber
            case "*":
                result = result * currentNumber
            case "/":
                result = result / currentNumber
            default:
                println("error")
        }
        
        currentNumber = 0
        lblResult.text = ("\(result)")
        
        if(sender.titleLabel!.text == "=") {
            result = 0
        }
        
        currentOp = sender.titleLabel!.text! as String!
        
    }
    
    @IBAction func btnClear(sender: UIButton) {
        result = 0
        currentNumber = 0
        currentOp = "="
        lblResult.text = ("\(result)")
    }
    

}

