//
//  SignupViewController.swift
//  Instagram
//
//  Created by craterzone on 04/02/21.
//

import UIKit

class SignupViewController: UIViewController {
    
    
    @IBOutlet weak var right: UIView!
    @IBOutlet weak var left: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    @IBOutlet weak var goToLoginLabel: UIButton!
    
    @IBOutlet weak var goToLoginButton: UIButton!
    
    
    @IBOutlet weak var topLangButton: UIButton!
    
    
    
    
    /*
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    var users = [String: String]()
    
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let arrow = UIImageView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        let arrimage = UIImage(named: "down_arrow")
        arrow.image = arrimage
        topLangButton.setImage(arrow.image, for: .normal)
        topLangButton.imageToRight()
        
        
        bottomView.addTopBorderWithColor(color: .gray, width: 1)
        left.addTopBorderWithColor(color: .gray, width: 1)
        right.addTopBorderWithColor(color: .gray, width: 1)
        
        goToLoginButton.addTarget(self, action: #selector(loginButtonTapped), for:.touchUpInside)
        goToLoginLabel.addTarget(self, action: #selector(loginButtonTapped), for:.touchUpInside)
    }
    
    
    /*
    func signup(){
        //Sign the user
        let email : String? = emailText.text!
        let pass : String? = passwordText.text!
        
        if email! == "" || pass! == "" {
            print("Error in signup")
        }else{
            users[email!] = pass
            let homePVC = RootPageViewController()
            homePVC.modalPresentationStyle = .fullScreen
            self.present(homePVC, animated: true, completion:  nil)
        }
        
        
    }
    
    func setupProfile(){
        //TODO : crate user profile
    }
    @IBAction func signupButtonAction(_ sender: Any) {
        signup()
    }
    */
    
    
    //taking out from the stack
    @objc func loginButtonTapped(){
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
