//
//  RegisterViewController.swift
//  FirebaseExample
//
//  Created by Norman, Benjamin (BJH) on 22/01/2019.
//  Copyright © 2019 Norman, Benjamin (BJH). All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func RegisterUser(_ sender: Any) {
        Auth.auth().createUser(withEmail: Email.text!, password: Password.text!, completion: {(user, error) in
            if error != nil{
                print(error!)
            }else{
                print("Registration completed")
            }
        })
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
