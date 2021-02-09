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
    
    // MARK: - Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
      
    }
    
    /// This function changing screen color
    fileprivate func updateUI() {
        view.backgroundColor = isLightOn ? .white : .black
     
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isLightOn.toggle()
        updateUI()
        
    }
    
    
   
    
}

