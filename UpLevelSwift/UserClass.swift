//
//  UserClass.swift
//  UpLevelSwift
//
//  Created by Faruk CANSIZ on 31.01.2023.
//

import Foundation

class UserClass {
    
    var isim : String
    var yas : Int
    var meslek : String
    
    init(isim: String, yas: Int, meslek: String) {
        self.isim = isim
        self.yas = yas
        self.meslek = meslek
    }
    
    func yasiBirArttir() {
        self.yas += 1
    }
    
    
    
}



