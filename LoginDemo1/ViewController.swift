//
//  ViewController.swift
//  LoginDemo1
//
//  Created by Visilean Meet on 19/01/22.
//TF=TExt Field,BTn=Button

import UIKit
class ViewController: UIViewController {

    @IBOutlet var passwordTF: UITextField!
    var userdata=[String]()
    @IBOutlet var UserNameTF: UITextField!
    //let data = ["username": (), "password": ()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserNameTF.addShadow()
        passwordTF.addShadow()
        
        
        let loginDetail = UserDefaults.standard.value(forKey:"username")
        if loginDetail != nil{
            UserNameTF.text = (UserDefaults.standard.value(forKey: "username") as? String)
            passwordTF.text = (UserDefaults.standard.value(forKey: "password") as? String)
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func LoginBTN(_ sender: Any) {
        let alert = UIAlertController(title: "Saving", message: "You Want To Save login Details", preferredStyle: .alert)
        let Yesbtn = UIAlertAction(title: "Yes" , style:.default ){(action) in
            self.userdata.append(self.UserNameTF.text!)
            UserDefaults.standard.set(self.userdata, forKey: "username")
            UserDefaults.standard.set(self.UserNameTF.text!, forKey: "username")
            
       //     UserDefaults.standard.set(self.userdata, forKey: "password")
            UserDefaults.standard.set(self.passwordTF.text!, forKey: "password")
            
            self.performSegue(withIdentifier: "alluser", sender: self)
            
        }
        let Nobtn = UIAlertAction(title: "No" , style:.default ){(action) in print("No")
            self.performSegue(withIdentifier: "alluser", sender: self)
            
        }
        alert.addAction(Yesbtn)
        alert.addAction(Nobtn)
        present(alert,animated: true,completion: nil)

        
    }
    @IBAction func FignupBTN(_ sender: Any) {
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "alluser"
        {
            let decv = segue.destination as! alluserViewController
           decv.userdata = userdata
        }
        else
        {
            print("error")
        }
    }

}

