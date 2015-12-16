//
//  ViewController.swift
//  multiplierApp
//
//  Created by Justin Sorrells on 12/16/15.
//  Copyright © 2015 Justin Sorrells. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mulitplier = 0
    var maxMultiplier = 50
    var result = 0
    
    
    @IBOutlet weak var multiplierLogo: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    @IBAction func addButtonPressed(sender: UIButton!) {
        multiplyNumber()
        updateLabel()
        if restartMultiplier() {
            multiplierLogo.hidden = false
            textField.hidden = false
            playButton.hidden = false
            
            textLabel.hidden = true
            addButton.hidden = true
            textField.text = ""
            textLabel.text = "Press Add to Add"
            result = 0
        }
    }
    
    @IBAction func playButtonPressed(sender: UIButton) {
        if textField.text != nil && textField.text != "" {
        multiplierLogo.hidden = true
        textField.hidden = true
        playButton.hidden = true
        
        textLabel.hidden = false
        addButton.hidden = false
            mulitplier = Int(textField.text!)!
        }
        
            
    }
    func multiplyNumber() {
       result = result + mulitplier
    }
    func updateLabel() {
        textLabel.text = "\(result) = \(result-mulitplier) + \(mulitplier)"
    }
   
    
    func restartMultiplier() -> Bool {
        if result >= maxMultiplier {
            return true
            
        }else{
            return false
        }

}

}