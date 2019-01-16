//
//  ViewController.swift
//  PriceCalculator
//
//  Created by Admin on 16.01.2019.
//  Copyright © 2019 furrki. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        calcBtn.backgroundColor = UIColor.gray
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(.black, for: .normal)
        calcBtn.addTarget(self, action: #selector(self.calculate), for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
        //return UIStatusBarStyle.default   // Make dark again
    }
    @objc func calculate(){
        
    }
}

