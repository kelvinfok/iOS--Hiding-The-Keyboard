//
//  ViewController.swift
//  Hiding The Keyboard
//
//  Created by kelvinfok on 13/7/16.
//  Copyright © 2016 kelvinfok. All rights reserved.


import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textfield: UITextField!
    
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
        label.text = textfield.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.textfield.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Closes the keyboard when touch outside
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // Close the keyboard with "Return" is pressed
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
}

