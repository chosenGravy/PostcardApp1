//
//  ViewController.swift
//  Postcard
//
//  Created by Simon Lally on 9/11/14.
//  Copyright (c) 2014 Simon Lally. All rights reserved.
//  Random Comment

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var messageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        // Code will evaluate when button is pressed
        
        // when send message is pressed label will appear
        messageLabel.hidden = false
        
        // set the label's text to display the string entered in enterMessageTextField
        messageLabel.text = enterMessageTextField.text
        
        enterMessageTextField.text = ""
        // have the keyboard hide
        enterMessageTextField.resignFirstResponder()
        // have the return text in the label red
        messageLabel.textColor = UIColor.redColor()
        
        // functions in swifts are easily identified with parenthesis 
        messageButton.setTitle("Message Sent", forState: UIControlState.Normal)
        
    }

}

