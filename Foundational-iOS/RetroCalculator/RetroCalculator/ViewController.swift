//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Árthur Ken Aramaki Mota on 01/05/17.
//  Copyright © 2017 Árthur Ken Aramaki Mota. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // MARK: - Properties
    var btnSound : AVAudioPlayer!
    
    
    // MARK: - Outlet
    
    
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
    
    }

 
    // MARK: - Methods
    func playSound() {
        
        if btnSound.isPlaying{
            btnSound.stop()
        }
    
        btnSound.play()
        
    }
    
    
    
    
    
    // MARK: - Actions
    @IBAction func numberPressed(sender: UIButton) {
        
        playSound()
        
    }
    
    
}

