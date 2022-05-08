//
//  Student.swift
//  Project2-StudentApp
//
//  Created by Kely Sotsky on 07/05/2022.
//

import Foundation


class Student{
    var name = ""
    var id = ""
    var avatarUrl = ""
    var phone = ""
    var address = ""
    
    init(name:String, id:String, avatarUrl:String, phone:String, address:String){
        self.name = name
        self.id = id
        self.avatarUrl = avatarUrl
        self.phone = phone
        self.address = address
    }
    
    init(){
        self.name = ""
        self.id = ""
        self.avatarUrl = ""
        self.phone = ""
        self.address = ""
    }
}
