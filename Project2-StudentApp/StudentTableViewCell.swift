//
//  StudentTableViewCell.swift
//  Project2-StudentApp
//
//  Created by Kely Sotsky on 07/05/2022.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    
    var id = "" {
        didSet{
            if idLabel != nil{
                idLabel.text = id
            }
        }
    }
    
    var name = ""{
        didSet{
            if nameLabel != nil{
                nameLabel.text = name
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        idLabel.text = id
        nameLabel.text = name
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
