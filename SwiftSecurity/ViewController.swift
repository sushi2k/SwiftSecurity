//
//  ViewController.swift
//  SwiftSecurity
//
//  Created by Sven on 31/10/19.
//  Copyright © 2019 Sven. All rights reserved.
//

import UIKit
import IOSSecuritySuite

class ViewController: UIViewController {
    @IBOutlet weak var Label_Jailbreak: UILabel!
    @IBOutlet weak var Label_Debugger: UILabel!
    @IBOutlet weak var Label_Emulator: UILabel!
    @IBOutlet weak var Label_RE_Tools: UILabel!
    
    
    
    @IBAction func Button_JB(_ sender: UIButton) {
        
        let jailbreakStatus = IOSSecuritySuite.amIJailbrokenWithFailMessage()
        if jailbreakStatus.jailbroken {
            print("This device is jailbroken")
            print("Because: \(jailbreakStatus.failMessage)")
            Label_Jailbreak.backgroundColor = UIColor.red
            Label_Jailbreak.text = "Jailbreak detected"
        } else {
            print("This device is not jailbroken")
            Label_Jailbreak.backgroundColor = UIColor.green
            Label_Jailbreak.text = "Jailbreak not detected"
        }
        
        
    }
    
    
    @IBAction func Button_Debug(_ sender: UIButton) {
        let amIDebugged = IOSSecuritySuite.amIDebugged() ? true : false
        
        if amIDebugged {
                print("This device is debugged")
                Label_Debugger.backgroundColor = UIColor.red
                Label_Debugger.text = "Debugger detected"
            } else {
                print("This device is not debugged")
                Label_Debugger.backgroundColor = UIColor.green
                Label_Debugger.text = "Debugger not detected"
        }
    }
    
    
    @IBAction func Button_Emulator(_ sender: UIButton) {
        
        let runInEmulator = IOSSecuritySuite.amIRunInEmulator() ? true : false
        
        if runInEmulator {
                print("This device is run in a emulator")
                Label_Emulator.backgroundColor = UIColor.red
                Label_Emulator.text = "Emulator detected"
            } else {
                print("This device is not run in a emulator")
                Label_Emulator.backgroundColor = UIColor.green
                Label_Emulator.text = "Emulator not detected"
        }
    }
    
    
    @IBAction func Button_RE_Tools(_ sender: UIButton) {
        
        let amIReverseEngineered = IOSSecuritySuite.amIReverseEngineered() ? true : false
        
        if amIReverseEngineered {
                print("This app is Reverse Engineered")
                Label_RE_Tools.backgroundColor = UIColor.red
                Label_RE_Tools.text = "RE Tools detected"
            } else {
                print("This app is not Reverse Engineered")
                Label_RE_Tools.backgroundColor = UIColor.green
                Label_RE_Tools.text = "RE Tools not detected"
        }
    }
    
    
    @IBAction func Deny_Debugger(_ sender: Any) {
        IOSSecuritySuite.denyDebugger()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

