//
//  alluserViewController.swift
//  LoginDemo1
//
//  Created by Visilean Meet on 19/01/22.
//

import UIKit

class alluserViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var userdata=[String]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableCell
        cell.lbl.text = userdata[indexPath.row]
        return cell
    }
    
    
   

    
    // @IBOutlet var tableView: UITableView!
    
   // var usernamelbl : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

}
