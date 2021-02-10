//
//  LoginViewController.swift
//  Instagram
//
//  Created by craterzone on 04/02/21.
//

import UIKit
protocol LoginScreen: UIViewController {
    var emailTextFiel: UITextField { get }
    var passwordTextField: UITextField { get }
    var loginBut: UIButton { get }
}
class LoginViewController: UIViewController ,LoginScreen {
    var emailTextFiel: UITextField{ return emailText }
    var passwordTextField: UITextField { return passwordText }
    var loginBut: UIButton { return loginButton}
    
    @IBOutlet private weak var emailText: UITextField!
    @IBOutlet private weak var passwordText: UITextField!
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var bottomView: UIView!
    @IBOutlet private weak var leftView: UIView!
    @IBOutlet private weak var rightView: UIView!
    
    var uiController: LoginUIController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiController.view = self
    }

    

}
