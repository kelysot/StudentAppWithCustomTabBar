//
//  AddStudentViewController.swift
//  Project2-StudentApp
//
//  Created by Kely Sotsky on 07/05/2022.
//

import UIKit

class AddStudentViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var addressTextView: UITextView!
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var idText: UITextField!
    @IBOutlet weak var phoneText: UITextField!
        
    @IBAction func saveBtn(_ sender: Any) {
        let student = Student()
        student.name = nameText.text!
        student.id = idText.text!
        student.phone = phoneText.text!
        student.address = addressTextView.text!
        Model.instance.addStudent(student: student)
        
        //Notify that there is one more student.
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
        removeSubview()
    }
  
    @IBAction func cancelBtn(_ sender: Any) {
        removeSubview()
    }
    
    func removeSubview(){
        nameText.text = ""
        idText.text = ""
        phoneText.text = ""
        
        if let viewWithTag = self.view.viewWithTag(100) {
            viewWithTag.removeFromSuperview()
        }else{
            print("No!")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //addressTextView border style.
        let borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        addressTextView.layer.borderWidth = 0.5
        addressTextView.layer.borderColor = borderColor.cgColor
        addressTextView.layer.cornerRadius = 5.0
        
    }
    
    //addressTextView hint text
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        addressTextView.delegate = self
        
        addressTextView.text = "Address"
        addressTextView.textColor = UIColor.lightGray
    }
    
    //addressTextView hint text
    func textViewDidBeginEditing(_ textView: UITextView) {

        if !addressTextView.text!.isEmpty && addressTextView.text! == "Address" {
            addressTextView.text = ""
            addressTextView.textColor = UIColor.black
        }
    }

    //addressTextView hint text
    func textViewDidEndEditing(_ textView: UITextView) {
    
        if addressTextView.text.isEmpty {
            addressTextView.text = "Address"
            addressTextView.textColor = UIColor.lightGray
        }
    }
}

