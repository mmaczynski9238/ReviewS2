//
//  RegisterViewController.swift
//  ReviewS
//
//  Created by student3 on 10/24/16.
//  Copyright © 2016 John Hersey High School. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatTextField: UITextField!
    @IBOutlet weak var successLabel: UILabel!
    
    var user = String()
    var passwordCode = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        successLabel.alpha = 0.0


    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        
        let repeatPassword = repeatTextField.text!
        
        
//        if (user.isEmpty || passwordCode.isEmpty || repeatPassword.isEmpty){
//            
//            let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
//            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
        
        if repeatPassword == passwordTextField.text{

            user = usernameTextField.text!
            passwordCode = passwordTextField.text!
            successLabel.alpha = 1.0
            //successLabel.text = "Success"
            
        
        
        }
        else if repeatPassword != passwordTextField.text{
            successLabel.text = "Passwords don't match"
            successLabel.alpha = 1.0

            
        }
//        func displayAlertMessage(_ userMessage: String){
//            let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
//            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
//        }
//
        

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let navVC = segue.destination as? MainViewController{
                    navVC.usernameCode = user
                }
            if let nvc = segue.destination as? MainViewController{
                nvc.passwordCode = passwordCode
            }
        
        }
    
   

}
