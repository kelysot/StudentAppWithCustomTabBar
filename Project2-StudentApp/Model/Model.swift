//
//  Model.swift
//  Project2-StudentApp
//
//  Created by Kely Sotsky on 07/05/2022.
//

import Foundation

class Model{
    
    static let instance = Model()
    var data = [Student]()
    
    private init(){}
    
    func getAllStudents()->[Student]?{
        return data
    }
    
    func addStudent(student:Student){
        data.append(student)
    }
    
    func getStudent(index:Int) -> Student{
        return data[index]
    }
}
