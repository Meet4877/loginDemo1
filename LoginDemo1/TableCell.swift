//
//  TableCell.swift
//  LoginDemo1
//
//  Created by Visilean Meet on 19/01/22.
//

import UIKit

class TableCell: UITableViewCell {
   
  
    @IBOutlet var lbl: UILabel!
    
    //var lbl : String = ""
    @IBOutlet var cell: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      //  tablecellLBL.text = lbl
     
    }
    
}
