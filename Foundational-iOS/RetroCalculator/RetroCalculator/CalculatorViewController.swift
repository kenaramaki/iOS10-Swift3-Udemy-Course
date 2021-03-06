//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Árthur Ken Aramaki Mota on 01/05/17.
//  Copyright © 2017 Árthur Ken Aramaki Mota. All rights reserved.
//

import UIKit
import AVFoundation

class CalculatorViewController: UIViewController {
    
    // MARK: - Properties
    var btnSound : AVAudioPlayer!

    enum Operation: String {
        
        case Divide     = "/"
        case Multiply   = "*"
        case Subtract   = "-"
        case Add        = "+"
        case Empty      = "Empty"
        
    }
    
    var currentOperation = Operation.Empty
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var result = ""
    
    // MARK: - Outlet
    @IBOutlet weak var outputLbl: UILabel!
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            btnSound.prepareToPlay()
        
        }catch let err as NSError {
            
            print(err.debugDescription)
            
        }
    
        outputLbl.text = "0"
        
    }

    // MARK: - Methods
    func playSound() {
        
        if btnSound.isPlaying{
            btnSound.stop()
        }
    
        btnSound.play()
        
    }
    
    func processOperation (operation: Operation) {
        
        playSound()
        
        if currentOperation != Operation.Empty {
            
            // A user selected an operator, but then selected another operator without first entering a number
            if runningNumber != "" {
                
                rightValStr = runningNumber
                runningNumber = ""
                
                if let leftVal = Double(leftValStr) {
                    
                    if let rightVal = Double(rightValStr) {
                        
                        if currentOperation == Operation.Multiply {
                            result = "\(leftVal * rightVal)"
                        } else if currentOperation == Operation.Divide {
                            result = "\(leftVal / rightVal)"
                        } else if currentOperation == Operation.Subtract {
                            result = "\(leftVal - rightVal)"
                        } else if currentOperation == Operation.Add {
                            result = "\(leftVal + rightVal)"
                        }
                    }
                    
                }
                
                
                /*
                switch currentOperation {
                case Operation.Divide:
                    result = "\(Double(leftValStr)! / Double(rightValStr)!)"
                case Operation.Multiply:
                    result = "\(Double(leftValStr)! * Double(rightValStr)!)"
                case Operation.Subtract:
                    result = "\(Double(leftValStr)! - Double(rightValStr)!)"
                case Operation.Add:
                    result = "\(Double(leftValStr)! + Double(rightValStr)!)"
                    
                default:
                    break
                }
                */
                
                leftValStr = result
                outputLbl.text = result
                
            }
            
            currentOperation = operation
        
        } else {
            
            // This is the first time an operator has been pressed
            leftValStr = runningNumber
            runningNumber = ""
            currentOperation = operation
            
        }
    }
    
    
    // MARK: - Actions
    @IBAction func numberPressed(sender: UIButton) {
        
        playSound()
        
        runningNumber += "\(sender.tag)"
        outputLbl.text = runningNumber
        
    }
    
    @IBAction func onDividePressed(sender: AnyObject) {
        processOperation(operation: .Divide)
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
        processOperation(operation: .Multiply)
    }
    
    @IBAction func onSubtractPressed(sender: AnyObject) {
        processOperation(operation: .Subtract)
    }
    
    @IBAction func onAddPressed(sender: AnyObject) {
        processOperation(operation: .Add)
    }
    
    @IBAction func onEqualPressed(sender: AnyObject) {
        processOperation(operation: currentOperation)
    }
    
    @IBAction func clearPressed(_ sender: Any) {
        
        currentOperation = Operation.Empty
        runningNumber = ""
        leftValStr = ""
        rightValStr = ""
        result = ""
        outputLbl.text = "0"
    }
    
    
}

