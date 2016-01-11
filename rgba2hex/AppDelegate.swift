//
//  AppDelegate.swift
//  rgba2hex
//
//  Created by Mac on 2016/1/5.
//  Copyright © 2016年 James. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    var masterViewController:MasterViewController!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        masterViewController = MasterViewController(nibName: "MasterViewController", bundle: nil)
        
        window.contentView!.addSubview(masterViewController.view)
        masterViewController.view.frame = (window.contentView as NSView!).bounds
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

