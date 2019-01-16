//
//  CurrencyTextField.swift
//  PriceCalculator
//
//  Created by Admin on 16.01.2019.
//  Copyright © 2019 furrki. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        custom()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        custom()
    }
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - (size / 2), width: size, height: size))
        currencyLbl.backgroundColor = .black
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = .white
        currencyLbl.layer.borderWidth = 2
        currencyLbl.layer.cornerRadius = 10.0
        currencyLbl.layer.opacity = 0.7
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    func custom(){
        layer.borderWidth = 2
        layer.cornerRadius = 5
        layer.opacity = 0.8
        textAlignment = .center
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.black ] )
            attributedPlaceholder = place
            textColor = .black
        }
    }

}
