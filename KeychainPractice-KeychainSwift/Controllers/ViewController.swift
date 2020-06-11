//
//  ViewController.swift
//  KeychainPractice-KeychainSwift
//
//  Created by Henry Calderon on 6/10/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit
import KeychainSwift

class ViewController: UIViewController {

    @IBOutlet weak var messageTxt: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var revealButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    let keychain = KeychainSwift()
//    keychain.accessGroup = "com.henrycalderon.KeychainPractice-KeychainSwift"
    
//    Example: "CS671JRA62.com.myapp.KeychainGroup"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        keychain.accessGroup = "com.henrycalderon.KeychainPractice-KeychainSwift"
        self.messageTxt.delegate = self
//        keychain.set("hello world", forKey: "my key")
//        print(keychain.get("my key")!)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func savePressed(_ sender: UIButton){
        keychain.set(messageTxt.text!, forKey: "message")
//        print(messageTxt.text!)
        print("Message Saved")
    }
    

    @IBAction func deletePressed(_ sender: UIButton){
        keychain.delete("message")
        print("Message Deleted")
    }

}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

