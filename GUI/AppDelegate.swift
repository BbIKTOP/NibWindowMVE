//
//  AppDelegate.swift
//  GUI
//
//  Created by Viktor Remennik on 10.04.2023.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    
    
    var statusItem: NSStatusItem!
    var statusButton: NSStatusBarButton!
    
    var menu: NSMenu!
    var menuItemTitle: NSMenuItem!
    var menuItemInfo: NSMenuItem!
    var menuItemQuit: NSMenuItem!
    
    var menuImage: NSImage!
    
    var titleView: TitleView!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        menuImage = NSImage(systemSymbolName: "menubar.rectangle", accessibilityDescription: "Image")
        
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)
        statusButton = statusItem.button
        statusButton.image = menuImage
        
        menuItemTitle = NSMenuItem(title: "First", action: nil, keyEquivalent: "")
        menuItemInfo = NSMenuItem(title: "Info", action: #selector(actionInfo), keyEquivalent: "i")
        menuItemQuit = NSMenuItem(title: "Quit", action: #selector(actionQuit), keyEquivalent: "q")
        
        menu = NSMenu()
        menu.addItem(menuItemTitle)
        menu.addItem(menuItemInfo)
        menu.addItem(NSMenuItem.separator())
        menu.addItem(menuItemQuit)
        
        statusItem.menu = menu
        
        titleView = TitleView(frame: NSRect(x: 0, y: 0, width: 250, height: 70))
        menuItemTitle.view = titleView
        titleView.setTitle(title: "Test")
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
    }
    
    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
    
    @objc func actionQuit() {
        NSApplication.shared.terminate(self)
    }
    
    var infoWindowController = InfoWindowController()
    @objc func actionInfo() {
        //        infoWindowController.showWindow(self)
        //        infoWindowController = InfoWindowController(windowNibName: "InfoWindow")
                infoWindowController.showWin()
        //        infoWindowController = InfoWindowController()
        //        infoWindowController.showWindow(self)
        //        infoWindowController.showWin(self)
    }
    
}

