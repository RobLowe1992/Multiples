//
//  ViewController.swift
//  Multiples
//
//  Created by Robert Lowe on 9/8/16.
//  Copyright © 2016 Robert Lowe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var finalMUltiple = 0
    var currentMultiple = 0
    var initialMultiple = 0
    
    
    //Outlets
    @IBOutlet weak var mLogo: UIImageView!
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var pencilBtn: UIButton!
    @IBOutlet weak var multLbl: UILabel!
    
    //Actions
    
    //Hides 3 outlets and reveals 2
    @IBAction func onPlayBtn(sender: UIButton!) {
        if txtField.text != nil && txtField.text != "" {
            
            mLogo.hidden = true
            txtField.hidden = true
            playBtn.hidden = true
            
            pencilBtn.hidden = false
            multLbl.hidden = false
            
            initialMultiple = Int(txtField.text!)!
            currentMultiple == initialMultiple
            
            
        }
    }
    // Computes the equation
    @IBAction func onPencilClick(sender: UIButton!) {
        updateLbl()
        currentMultiple += initialMultiple
   
        addMultiples()
        
        if ifGameOver() {
            restartGame()}
        
    }
    
    
    //Updates the text on the label
    func updateLbl() {
        multLbl.text = ("\(initialMultiple) + \(currentMultiple) = \(finalMUltiple)")
        
    }
    //Checks to see if the game is over
    func ifGameOver() -> Bool {
        if currentMultiple >= initialMultiple * 10 {
            return true
        }
            return false
    }
    //Restarts the game
    func restartGame() {
        
        txtField.text = ""
        initialMultiple = 0
        currentMultiple = 0
        finalMUltiple = 0
        
        mLogo.hidden = false
        txtField.hidden = false
        playBtn.hidden = false
        
        pencilBtn.hidden = true
        multLbl.hidden = true
        
        updateLbl()
    }
    func addMultiples() {
         finalMUltiple = currentMultiple + initialMultiple
    }
}




