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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.messageTxt.delegate = self

    }
    
    //MARK: Functions
    func save(mess: String, key: String){
        keychain.set(mess, forKey: key)
        print("Message Saved")
    }
    
    func delete(key: String){
        keychain.delete(key)
        print("Message Deleted")
    }
    
    //MARK: Actions
    @IBAction func savePressed(_ sender: UIButton){
        save(mess: messageTxt.text!, key: "message")
    }
    

    @IBAction func deletePressed(_ sender: UIButton){
        delete(key: "message")
    }

}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

