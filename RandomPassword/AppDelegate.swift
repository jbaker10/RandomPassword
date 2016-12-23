//
//  AppDelegate.swift
//  RandomPassword
//
//  Created by Baker, Jeremiah (NIH/NIMH) [C] on 12/23/16.
//  Copyright © 2016 National Institutes of Health. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

//    @IBOutlet weak var window: NSWindow!
    var mainWindowController: MainWindowController?


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let mainWindowController = MainWindowController()
        
        //Put the window of the window controller on the screen
        mainWindowController.showWindow(self)
        
        //Set the property to point to the window controller
        self.mainWindowController = mainWindowController
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

