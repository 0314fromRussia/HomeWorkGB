//
//  ViewController.swift
//  HomeWork
//
//  Created by Никита Дмитриев on 29.07.2020.
//  Copyright © 2020 Никита Дмитриев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//Mark: - IBAction
    
    @IBAction func registrationDidPressed(_ sender: Any) {
        if loginTextField.text == "admin" && passwordTextField.text == "12345" {
            print("You are able to login")
        }else{
            print("not able to login")
        }
    }
}

