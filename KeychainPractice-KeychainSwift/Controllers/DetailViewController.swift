//
//  DetailViewController.swift
//  KeychainPractice-KeychainSwift
//
//  Created by Henry Calderon on 6/10/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit
import KeychainSwift

class DetailViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    let keychain = KeychainSwift()
    
    var messages = "Pushover"
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let mess = keychain.get("message") else {
            print("Fail?")
            return
        }
        messageLabel.text = mess
    }
    
}
