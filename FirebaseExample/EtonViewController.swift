//
//  EtonViewController.swift
//  FirebaseExample
//
//  Created by Norman, Benjamin (BJH) on 29/01/2019.
//  Copyright © 2019 Norman, Benjamin (BJH). All rights reserved.
//

import UIKit
import FirebaseFirestore

class EtonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBOutlet weak var theText: UITextField!
    let db = Firestore.firestore()
    
    @IBAction func sendTweet(_ sender: Any) {
        db.collection("tweets").document("eton").updateData(["messages":FieldValue.arrayUnion([theText.text!])])
    }
    



}
