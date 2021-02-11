//
//  PasswordTextField.swift
//  Instagram
//
//  Created by craterzone on 11/02/21.
//

import Foundation
import UIKit
class InstaTextField: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        layer.borderWidth = 1
        layer.borderColor = UIColor.gray.cgColor
        backgroundColor = .lightGray
    }
    override func layoutIfNeeded() {

    }
    override var text: String?{
        didSet{
            let gradient = getGradientLayer(bounds: self.bounds)
            textColor = gradientColor(bounds: self.bounds, gradientLayer: gradient)
        }
    }
    
    override var placeholder: String?{
        get { self.attributedPlaceholder?.string }
        set{
            guard let value = newValue else {
                self.attributedPlaceholder = nil
                return
            }
            self.attributedPlaceholder = NSAttributedString(string: value,
                                                            attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
        }
    }
    
    
    func gradientColor(bounds: CGRect, gradientLayer :CAGradientLayer) -> UIColor? {
    //We are creating UIImage to get gradient color.
          UIGraphicsBeginImageContext(gradientLayer.bounds.size)
          gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
          let image = UIGraphicsGetImageFromCurrentImageContext()
          UIGraphicsEndImageContext()
          return UIColor(patternImage: image!)
    }
    func getGradientLayer(bounds : CGRect) -> CAGradientLayer{
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        return gradient
    }
    
    
    
}
class PasswordTextField: UITextField{
    override var isSecureTextEntry: Bool{
        get{
            super.isSecureTextEntry
        }
        set{
            super.isSecureTextEntry = newValue
            let image = newValue ? UIImage(named: "password_non_secure") : UIImage(named: "password_secure")
            guard let rightToggleButton = self.rightView as? UIButton else { return }
            rightToggleButton.setImage(image, for: .normal)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        let rightButton = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        rightButton.addTarget(self, action: #selector(toggleSecureEntry), for: .touchUpInside)
    }
    @objc private func toggleSecureEntry(){
        self.isSecureTextEntry.toggle()
    }
}
