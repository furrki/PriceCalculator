//
//  ViewController.swift
//  PriceCalculator
//
//  Created by Admin on 16.01.2019.
//  Copyright © 2019 furrki. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var priceTf: CurrencyTextField!
    @IBOutlet weak var wageTf: CurrencyTextField!
    var labelsToToggle: [UILabel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelsToToggle = [showLabel, hourLabel]
        
        let _ = labelsToToggle.map({ $0.isHidden = true })
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        calcBtn.backgroundColor = UIColor.gray
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(.black, for: .normal)
        calcBtn.addTarget(self, action: #selector(self.calculateBtnClicked), for: .touchUpInside)
        
        priceTf.inputAccessoryView = calcBtn
        wageTf.inputAccessoryView = calcBtn
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let _ = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= 180
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
        //return UIStatusBarStyle.default   // Make dark again
    }
    @objc func calculateBtnClicked(){
        if let price = Int(priceTf.text!), let wage = Int(wageTf.text!) {
            hourLabel.text = String(Wage.getHours(forWage: wage, andPrice: price))
            let _ = labelsToToggle.map({
                $0.isHidden = false
            })
        }
        view.endEditing(true)
    }
    
 
}

