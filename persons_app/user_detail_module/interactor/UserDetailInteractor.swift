//
//  UserDetailInteractor.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
import Firebase
class UserDetailInteractor : PresenterToInteractorDetailPersonProtocol{
    var ref = Database.database().reference().child("kisiler")

    func updatePerson(user_id: String, user_name: String, number: String) {
        print("UserName \(user_name ) tel \(number ) ID \(user_id)")
        
    }
    
}

