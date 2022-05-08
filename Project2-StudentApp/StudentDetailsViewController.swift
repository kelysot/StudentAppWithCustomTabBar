//
//  StudentDetailsViewController.swift
//  Project2-StudentApp
//
//  Created by Kely Sotsky on 07/05/2022.
//

import UIKit

class StudentDetailsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    var student:Student?{
        didSet{
            if(idLabel != nil){
                idLabel.text = student?.id
                nameLabel.text = student?.name
                phoneLabel.text = student?.phone
                addressLabel.text = student?.address
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let student = student {
            idLabel.text = student.id
            nameLabel.text = student.name
            phoneLabel.text = student.phone
            addressLabel.text = student.address
        }
    }
    
    override func viewWillLayoutSubviews() {
        addressLabel.sizeToFit()
     }

}
