//
//  UserStruct.swift
//  UpLevelSwift
//
//  Created by Faruk CANSIZ on 31.01.2023.
//

import Foundation

struct UserStruct {
    
    var isim : String
    var yas : Int
    var meslek : String
    
    //struct immutable olduğu için self yani structın kendisi değiştirilemez, bunu mutating func ile çözebiliyoruz (değiştirici fonksiyon)
    mutating func yasiBirArttir() {
        self.yas += 1
    }
    
    
}



