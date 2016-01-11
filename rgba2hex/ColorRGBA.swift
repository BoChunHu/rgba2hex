//
//  ColorRGBA.swift
//  rgba2hex
//
//  Created by Mac on 2016/1/5.
//  Copyright © 2016年 James. All rights reserved.
//

import Cocoa

class ColorRGBA: NSObject {
    
    var colorR: Int
    var colorG: Int
    var colorB: Int
    var alpha: Double
    
    override init() {
        colorR = 0
        colorG = 0
        colorB = 0
        alpha = 1
    }

}
