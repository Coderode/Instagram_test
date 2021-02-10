//
//  SignupViewController.swift
//  Instagram
//
//  Created by craterzone on 04/02/21.
//

import UIKit

class SignupViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    var users = [String: String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
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
    
    
    

}
