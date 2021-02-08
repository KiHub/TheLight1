//
//  ViewController.swift
//  TheLight1
//
//  Created by  Mr.Ki on 08.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = false

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
      //  view.backgroundColor = .black
    }

    fileprivate func updateUI() {
        view.backgroundColor = isLightOn ? .white : .black
    }
    
    @IBAction func pressButton() {
        isLightOn.toggle()
        updateUI()
        // print(#line, #function, isLightOn)
        
    }
    
}

