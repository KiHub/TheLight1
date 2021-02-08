//
//  ViewController.swift
//  TheLight1
//
//  Created by  Mr.Ki on 08.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = true
    
    override var prefersStatusBarHidden: Bool {
        return true 
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
      //  view.backgroundColor = .black
    }
    
    /// This function changing screen color
    fileprivate func updateUI() {
        view.backgroundColor = isLightOn ? .white : .black
    }
    
    /// This function change screen color after toch
    @IBAction func pressButton() {
        isLightOn.toggle()
        updateUI()
        // print(#line, #function, isLightOn)
        
    }
    
}

