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
        backgroundColor = #colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9803921569, alpha: 1)
    }
    
    /*
    override var text: String?{
        didSet{
            let gradient = getGradientLayer(bounds: super.bounds)
            textColor = gradientColor(bounds: super.bounds, gradientLayer: gradient)
        }
    }
     */
    
    override var placeholder: String?{
        get {
            self.attributedPlaceholder?.string
            
        }
        set{
            guard let value = newValue else {
                self.attributedPlaceholder = nil
                return
            }
            self.attributedPlaceholder = NSAttributedString(string: value, attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
        }
    }
    
    /*
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
 
 */
    
    
    
}

