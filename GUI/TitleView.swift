//
//  TitleView.swift
//  GUI
//
//  Created by Viktor Remennik on 11.04.2023.
//

import Foundation
import Cocoa

class TitleView: NSView {
    
    @IBOutlet weak var titleLabel: NSTextField!
    
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
    }
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        loadView()
    }
    
    func loadView()
    {
        print("Loading title view")
        
        var topLevelObjects: NSArray!
        let isNibLoaded = Bundle.main.loadNibNamed("TitleView", owner: self, topLevelObjects: &topLevelObjects)
        if !isNibLoaded {
            print("Failed to load NIB from file")
        }
        let tv = (topLevelObjects.first(where: { $0 is NSView }) as? NSView)!
        self.addSubview(tv)

        //.withAlphaComponent(0.5)
        tv.layer?.backgroundColor = NSColor(named: "MenuTitleColor")?.cgColor
    }
    
    func setTitle(title: String) {
        if titleLabel == nil {
            print("titleText is nil")
        }
        else {
            titleLabel.stringValue = title
        }
    }
}
