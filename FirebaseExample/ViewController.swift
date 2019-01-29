//
//  ViewController.swift
//  FirebaseExample
//
//  Created by Norman, Benjamin (BJH) on 22/01/2019.
//  Copyright © 2019 Norman, Benjamin (BJH). All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    

    @IBAction func LoginUser(_ sender: Any) {
        Auth.auth().signIn(withEmail: (Email.text!), password: Password.text!) { (user,error) in
            if error != nil {
                print(error!)
            }else {
                print("Login successful")
                self.performSegue(withIdentifier: "LoginSegue", sender: self)
            }
        }
    }
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }




}

