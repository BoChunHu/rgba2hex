//
//  MasterViewController.swift
//  rgba2hex
//
//  Created by Mac on 2016/1/5.
//  Copyright © 2016年 James. All rights reserved.
//

import Cocoa

class MasterViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBOutlet weak var aInputValue: NSTextField!
    @IBOutlet weak var bInputValue: NSTextField!
    @IBOutlet weak var gInputValue: NSTextField!
    @IBOutlet weak var rInputValue: NSTextField!
    @IBOutlet weak var displayHex: NSTextField!
    
    @IBAction func transfer(sender: NSButton) {
        
        let color = ColorRGBA()
        
        let ColorR: String = rInputValue.stringValue
        let ColorG: String = gInputValue.stringValue
        let ColorB: String = bInputValue.stringValue
        let Alpha: String = aInputValue.stringValue
        
        var hexValue: String
        
        color.colorR = Int(ColorR)!
        color.colorG = Int(ColorG)!
        color.colorB = Int(ColorB)!
        color.alpha = Double(Alpha)!
        
        let iAlpha = Int(255*color.alpha)
        
        hexValue = NSString(format:"%2x%2X%2x%2x",iAlpha,color.colorR,color.colorG,color.colorB ) as String
        
        displayHex.stringValue = hexValue
    }
}
