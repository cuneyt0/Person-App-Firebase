//
//  HomeviewInteractor.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
class HomeviewInteractor:PresenterToInteractorHomeViewProtocol{
    var homeViewPresenter: InteractorToPresenterHomeViewProtocol?
    
    func fetchAllUser() {
        var personList = [Person]()
        let k1 = Person(kisi_id: "1",kisi_ad: "Ahmet",kisi_tel: "5454333333")
        let k2 = Person(kisi_id: "1",kisi_ad: "Mehmet",kisi_tel: "5454")
        personList.append(k1)
        personList.append(k2)
        homeViewPresenter?.presenteraVeriGonder(kisilerListesi: personList)
    }
    
    func searchUser(searchKey: String) {
        print("Aranan Metin \(searchKey)")
    }
    
    func deleteUser(Id: String) {
        print("\(Id) silindi")
    }
}
