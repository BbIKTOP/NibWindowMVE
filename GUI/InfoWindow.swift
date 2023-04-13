//
//  InfoWindow.swift
//  GUI
//
//  Created by Viktor Remennik on 12.04.2023.
//

import Foundation
import Cocoa

class InfoWindowController: NSWindowController {
    
    @IBOutlet var infoWindow: NSWindow!
    
    override var windowNibName: String! {
        return "InfoWindow"
    }
    
    override func windowDidLoad() {
        print("windowDidLoad: window is \(window == nil ? "nil" : "not nil" )")
    }
        
    func showWin() {
        _ = window
//        window?.center()
//        window?.makeKeyAndOrderFront(self)
        /// This does not work
//        window?.center()
//        window?.makeKeyAndOrderFront(self)
        
        //This works with the first NSViewController.window access
        infoWindow?.center()
        infoWindow?.makeKeyAndOrderFront(self)
    }
}
