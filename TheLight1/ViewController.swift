//
//  ViewController.swift
//  TheLight1
//
//  Created by  Mr.Ki on 08.02.2021.
//


import UIKit
import AVFoundation

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
        let device = AVCaptureDevice.default(for: AVMediaType.video)
             
             if let dev = device, dev.hasTorch {
                 view.backgroundColor = .black
                 do {
                     try dev.lockForConfiguration()
                     dev.torchMode = isLightOn ? .on : .off
                     dev.unlockForConfiguration()
                 } catch {
                     print(error)
                 }
             } else {
        view.backgroundColor = isLightOn ? .white : .black
             }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isLightOn.toggle()
        updateUI()
        
    }
    
    
   
    
}

