//
//  HomeviewInteractor.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
import Firebase
class HomeviewInteractor:PresenterToInteractorHomeViewProtocol{
    var homeViewPresenter: InteractorToPresenterHomeViewProtocol?
    var ref = Database.database().reference().child("kisiler")
    
    func fetchAllUser() {
       
        ref.observe(.value,with: { snapshot in
            
            
            var personList = [Person]()
            
            if let response = snapshot.value as? [String:AnyObject]{
                for row in response {
                    if let d = row.value as? NSDictionary {
                        var kisi_id = row.key
                        var kisi_ad = d["kisi_ad"] as? String ?? ""
                        var kisi_tel = d["kisi_tel"] as? String ?? ""
                        
                        let person = Person(kisi_id: kisi_id,kisi_ad: kisi_ad,kisi_tel: kisi_tel)
                        personList.append(person)
                    }
                }
            }
           
            self.homeViewPresenter?.presenteraVeriGonder(kisilerListesi: personList)
        })
      
    }
    
    func searchUser(searchKey: String) {
        print("Aranan Metin \(searchKey)")
    }
    
    func deleteUser(Id: String) {
        print("\(Id) silindi")
    }
}
