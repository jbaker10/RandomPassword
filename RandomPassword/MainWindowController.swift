//
//  MainWindowController.swift
//  RandomPassword
//
//  Created by Baker, Jeremiah (NIH/NIMH) [C] on 12/23/16.
//  Copyright © 2016 National Institutes of Health. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var textField: NSTextField!
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBOutlet weak var getPasswordLength: NSPopUpButton!
    
    @IBAction func generatePassword(sender: AnyObject) {
        // Get a random string of length 8
        let passwordLength = getPasswordLength.titleOfSelectedItem
        
        let length = Int(passwordLength!)
        let password = generateRandomString(length: length!)
        
        //Tell the text field display the string
        textField.stringValue = password
        }
}
