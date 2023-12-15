//
//  AddPersonInteractor.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
import Firebase
class AddPersonInteractor : PresenterToInteractorAddPersonProtocol{
    var ref = Database.database().reference().child("kisiler")

    func addPerson(user_name: String, number: String) {
        print("UserName \(user_name ) tel \(number )")
        
        let person = ["kisi_id":"","kisi_ad":user_name,"kisi_tel":number]
        
        ref.childByAutoId().setValue(person)
    }
    
    
}
