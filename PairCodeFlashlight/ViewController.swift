//
//  ViewController.swift
//  PairCodeFlashlight
//
//  Created by kudo on 5/22/17.
//  Copyright © 2017 Zac D. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        if isOn == false {
            return .default
        } else {
            return .lightContent
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var isOn: Bool = true {
        didSet {
            
            if isOn == false {
                self.view.backgroundColor = UIColor.white
                
                onOffButton.setTitle("OFF", for: UIControlState.normal)
                onOffButton.setTitleColor(UIColor.black, for: UIControlState.normal)
                
            } else if isOn == true {
                self.view.backgroundColor = UIColor.black
                onOffButton.setTitle("ON", for: UIControlState.normal)
                onOffButton.setTitleColor(UIColor.white, for: UIControlState.normal)

            }
            
            setNeedsStatusBarAppearanceUpdate()
        }
    }

    
    @IBOutlet weak var onOffButton: UIButton!
    

    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        isOn = !isOn
        
    }

}




