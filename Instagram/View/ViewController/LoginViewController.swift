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
    
    var baseViewP: UIView { get }
    var topLangButtonP: UIButton { get }
    var instaLogoP: UIImageView { get }
    var inputStackP: UIStackView { get }
    var forgotPasswordStackViewP: UIStackView { get }
    var forgotpasswordLabelP: UIButton { get }
    var forgotPasswordButtonP: UIButton { get }
    var orViewP: UIView { get }
    var facebookButtonP: UIButton { get }
    var bottomContainerViewP: UIView { get }
    var bottomViewP: UIView { get }
    var signupstackP: UIStackView { get }
    var signupBlueButtonP: UIButton { get }
    var forgotPasswordBlueButtonP: UIButton { get }
    var baseScrollViewP: UIView { get }
    var superViewP: UIView{ get }
}
class LoginViewController: UIViewController ,LoginScreen {
    
    
    
    var emailTextFiel: UITextField{ return emailText }
    var passwordTextField: UITextField { return passwordText }
    var loginBut: UIButton { return loginButton}
    var baseViewP: UIView { return baseview }
    var topLangButtonP: UIButton { return topLangButton }
    var instaLogoP: UIImageView { return instaLogo }
    var inputStackP: UIStackView { return inputStack }
    var forgotPasswordStackViewP: UIStackView { return forgotPasswordStackView }
    var forgotpasswordLabelP: UIButton { return forgotpasswordLabel }
    var forgotPasswordButtonP: UIButton { return forgotPasswordButton }
    var orViewP: UIView { return orView }
    var facebookButtonP: UIButton { return facebookButton }
    var bottomContainerViewP: UIView { return bottomContainerView }
    var bottomViewP: UIView { return bottomView }
    var signupstackP: UIStackView { return signupstack }
    
    var signupBlueButtonP: UIButton { return signupBlueButton }
    var forgotPasswordBlueButtonP: UIButton { return forgotPasswordBlueButton }
    var baseScrollViewP: UIView { return baseScrollView }
    var superViewP: UIView{ return superView }
    
    @IBOutlet private weak var emailText: UITextField!
    @IBOutlet private weak var passwordText: UITextField!
    @IBOutlet private weak var loginButton: UIButton!
    
    @IBOutlet private weak var leftView: UIView!
    @IBOutlet private weak var rightView: UIView!
    
    
    @IBOutlet weak var baseview: UIView!
    
    @IBOutlet weak var topLangButton: UIButton!
    
    @IBOutlet weak var instaLogo: UIImageView!
    
    @IBOutlet weak var inputStack: UIStackView!
    
    @IBOutlet weak var forgotPasswordStackView: UIStackView!
    
    @IBOutlet weak var forgotpasswordLabel: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBOutlet weak var orView: UIView!
    
    @IBOutlet weak var facebookButton: UIButton!
    
    @IBOutlet weak var bottomContainerView: UIView!
    
    @IBOutlet weak var bottomView: UIView!
    
    
    @IBOutlet weak var signupstack: UIStackView!
    
    
    @IBOutlet weak var forgotPasswordBlueButton: UIButton!
    
    @IBOutlet weak var signupBlueButton: UIButton!
    
    @IBOutlet weak var baseScrollView: UIScrollView!
    
    @IBOutlet var superView: UIView!
    
    
    
    //    var uiController: LoginLightModeUIContoller!
    var uiController: LoginDarkModeUIContoller!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiController.view = self
        bottomView.addTopBorderWithColor(color: .gray, width: 1)
        passwordText.setPadding()
        emailText.setPadding()
        leftView.addTopBorderWithColor(color: .gray, width: 1)
        rightView.addTopBorderWithColor(color: .gray, width: 1)
    }

    

}
