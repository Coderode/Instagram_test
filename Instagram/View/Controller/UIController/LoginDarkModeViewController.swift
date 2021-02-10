//
//  Instagram
//  Login Light mode view controller
//

import Foundation
import UIKit
protocol LoginDarkModeUIContoller: class {
    var view: LoginScreen? { get set }
}
class LoginDarkModeViewController: NSObject , LoginDarkModeUIContoller {
    
    
    
    var view: LoginScreen? = nil {
        didSet{
            guard let loginScreen = view else { return }
            setUIColors(loginScreen: loginScreen)
            didTextFieldTextChanged(textfield: loginScreen.emailTextFiel)
            loginScreen.emailTextFiel.addTarget(self, action: #selector(didTextFieldTextChanged(textfield:)), for: .editingChanged)
            loginScreen.passwordTextField.addTarget(self, action: #selector(didTextFieldTextChanged(textfield:)), for: .editingChanged)
        }
    }
    @objc func didTextFieldTextChanged(textfield: UITextField){
        guard let screen = view else { return }
        if screen.emailTextFiel.text?.isValidEmail() ?? false {
            if screen.passwordTextField.text?.count ?? 0 > 5{
                screen.loginBut.isEnabled = true
                screen.loginBut.backgroundColor = .systemBlue
                screen.loginBut.setTitleColor(.white, for: .normal)
                return
            }
        }
        screen.loginBut.isEnabled = false
        screen.loginBut.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        screen.loginBut.setTitleColor(.lightGray, for: .normal)

    }
    func setUIColors(loginScreen: LoginScreen){
        loginScreen.loginBut.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        loginScreen.loginBut.setTitleColor(.lightGray, for: .normal)
        loginScreen.baseViewP.backgroundColor = .black
        loginScreen.topLangButtonP.backgroundColor = .black
        loginScreen.instaLogoP.backgroundColor = .black
        loginScreen.instaLogoP.tintColor = .white
        loginScreen.inputStackP.backgroundColor = .black
        loginScreen.forgotPasswordStackViewP.backgroundColor = .black
        loginScreen.forgotpasswordLabelP.backgroundColor = .black
        loginScreen.forgotPasswordButtonP.backgroundColor = .black
        loginScreen.orViewP.backgroundColor = .black
        loginScreen.facebookButtonP.backgroundColor = .black
        loginScreen.bottomContainerViewP.backgroundColor = .black
        loginScreen.baseViewP.backgroundColor = .black
        loginScreen.signupstackP.backgroundColor = .black
        loginScreen.bottomViewP.backgroundColor = .black
        loginScreen.signupBlueButtonP.setTitleColor(.white, for: .normal)
        loginScreen.forgotPasswordBlueButtonP.setTitleColor(.white, for: .normal)
        loginScreen.baseScrollViewP.backgroundColor = .black
        loginScreen.superViewP.backgroundColor = .black
        loginScreen.emailTextFiel.backgroundColor = UIColor.darkGray
        loginScreen.emailTextFiel.tintColor = .white
        loginScreen.emailTextFiel.textColor = .white
        loginScreen.passwordTextField.textColor = .white
        loginScreen.passwordTextField.tintColor = .white
        loginScreen.passwordTextField.backgroundColor = UIColor.darkGray
        loginScreen.emailTextFiel.attributedPlaceholder = NSAttributedString(string: loginScreen.emailTextFiel.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        loginScreen.passwordTextField.attributedPlaceholder = NSAttributedString(string: loginScreen.passwordTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        

    }
}


