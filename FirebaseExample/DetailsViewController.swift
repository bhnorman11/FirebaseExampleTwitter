//
//  DetailsViewController.swift
//  FirebaseExample
//
//  Created by Norman, Benjamin (BJH) on 29/01/2019.
//  Copyright © 2019 Norman, Benjamin (BJH). All rights reserved.
//

import UIKit
import FirebaseFirestore

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    let db = Firestore.firestore()

    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var SecondName: UITextField!
    @IBOutlet weak var Country: UITextField!
    @IBOutlet weak var Gender: UITextField!
    @IBOutlet weak var Username: UITextField!
    
    @IBAction func RegisterDetails(_ sender: Any) {
        db.collection("People").document(Username.text!).setData([
            "First Name": FirstName.text!,
            "Second Name": SecondName.text!,
            "Country": Country.text!,
            "Gender": Gender.text!
        ]) { err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
            }
        }
    }
    
}
