//
//  Instagram
//  Login Light mode view controller
//

import Foundation
import UIKit
protocol LoginLightModeUIContoller: class {
    var view: LoginScreen? { get set }
}
class LoginLightModeViewController: NSObject , LoginLightModeUIContoller {
    
    
    
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
                screen.loginBut.titleLabel?.textColor = .white
                return
            }
        }
        screen.loginBut.isEnabled = false
        screen.loginBut.backgroundColor = #colorLiteral(red: 0.6980392157, green: 0.8745098039, blue: 0.9882352941, alpha: 1)

    }
    func setUIColors(loginScreen: LoginScreen){
        loginScreen.loginBut.backgroundColor = .systemBlue
        loginScreen.loginBut.titleLabel?.textColor = .white
    }
}


