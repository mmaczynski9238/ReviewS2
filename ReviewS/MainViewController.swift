//
//  MainViewController.swift
//  ReviewS
//
//  Created by JBM on 10/19/16.
//  Copyright © 2016 John Hersey High School. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var failed: UIButton!
    var usernameCode = String()
    var passwordCode = String()
    
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.setValue(usernameCode, forKey: "username")
        UserDefaults.standard.setValue(passwordCode, forKey: "password")
        label.alpha = 0.0
       


        
    }

    
    @IBAction func loginButton(_ sender: UIButton) {
        let user = usernameField.text
        let pass = passwordField.text
        
        let usernameStored = UserDefaults.standard.string(forKey: "username")
        let passwordStored = UserDefaults.standard.string(forKey: "password")
        
        if user == usernameStored && pass == passwordStored{
            print("Good")
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "home")
            performSegue(withIdentifier: "homeSegue", sender: nil)
            navigationController?.pushViewController(vc!, animated: true)
            
            
        }
        else if user == "" || pass == ""{
            print("bad")
        }
        else{
            label.text = "Try Again"
            label.alpha = 1.0
            
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navVC = segue.destination as? TestViewController{
            navVC.usernameCode = usernameCode
        }
    }

}

