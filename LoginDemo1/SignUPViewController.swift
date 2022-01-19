//
//  SignUPViewController.swift
//  LoginDemo1
//
//  Created by Visilean Meet on 19/01/22.
//

import UIKit

class SignUPViewController: UIViewController {


    @IBOutlet var UsernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var firstnameTF: UITextField!
    @IBOutlet var lastnameTF: UITextField!
    @IBOutlet var genderTF: UITextField!
    @IBOutlet var ageTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        UsernameTF.addShadow()
        passwordTF.addShadow()
        firstnameTF.addShadow()
        lastnameTF.addShadow()
        genderTF.addShadow()
        ageTF.addShadow()
             // Do any additional setup after loading the view.
    }
   
    @IBAction func SignupBTNclick(_ sender: Any) {
    }
    
}
