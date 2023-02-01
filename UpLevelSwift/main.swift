//
//  main.swift
//  UpLevelSwift
//
//  Created by Faruk CANSIZ on 31.01.2023.
//

import Foundation

//Struct -> inheritance yok, stack - filo(first in last out), more fast, value type, imutable
//Class -> inheritance var, heap - fifo(fisrt in first out), referance type, mutable, objective-c

let kisiClass = UserClass(isim: "faruk", yas: 22, meslek: "developer")

print(kisiClass.isim)

//let kisiStruct = UserStruct(isim: "faruk", yas: 22, meslek: "developer")

var kisiStruct = UserStruct(isim: "faruk", yas: 22, meslek: "developer")

print(kisiStruct.isim)


kisiClass.yas = 33
print(kisiClass.yas)


//Structta let olduğunda içerisinde ki bir eleman dahi olsa değiştiremiyoruz. kisiStruct = 33 gibi bir değişikliği zaten let olduğu için değişemez olduğu için yapamazdık ama içerisinde ki bir eleman değişikliğini class ta olsa yapabiliriz, structta yapamıyoruz, değişiklik yapabilmemiz için let değil var olarak atamamız gerekiyor
kisiStruct.yas = 33
print(kisiStruct.yas)

//Referans ve Değer Farkı :
//class içinde struct içinde birer kopya oluşturalım ve kopya içerisinde elemanlarda değişiklik yapalım. Sınıfın kopyasında yaptığımız değişikli asıl sınıfta da değişecektir. Çünkü asıl sınıfı kopya sınıfa atamış olduk(referance type). Tek bir obje iki farklı sınıf(referance). AMA structta oluşturduğumuz kopyada yaptığımız değişiklik kopyayı ilgilendirir asıl structı değil(value type). iki farklı obje 

let kisiClassKopyası = kisiClass
var kisiStructKopyası = kisiStruct

print(kisiClassKopyası.yas)
print(kisiStructKopyası.yas)

kisiClassKopyası.yas = 44
kisiStructKopyası.yas = 44

print(kisiClassKopyası.yas)
print(kisiStructKopyası.yas)

print(kisiClass.yas)
print(kisiStruct.yas)

//Fonksiyon farkı

print(kisiClass.yas)
kisiClass.yasiBirArttir()
print(kisiClass.yas)

print(kisiClassKopyası.yas) //kisiClass'taki yaşı arttırdık ve kişiClassKopyasında ki de arttı

print(kisiStruct.yas)
kisiStruct.yasiBirArttir()
print(kisiStruct.yas)

print(kisiStructKopyası.yas) //kisiStruct'taki yaşı arttırdık ama kişiStructKopyasında ki değişmedi

//GuardeLet ifLet farkı

var numaraStringi = "5"

func inteCevirenIfLetFunc(st: String) -> Int {
    
    if let integer = Int(st) {
        return integer
    } else {
        return 0
    }
}

print(inteCevirenIfLetFunc(st: numaraStringi))

func inteCevirenGuardLetFunc(st: String) -> Int {
    guard let integer = Int(st) else {
        return 0
    }
    return integer
}

print(inteCevirenGuardLetFunc(st: numaraStringi))

numaraStringi = "faruk"

print(inteCevirenIfLetFunc(st: numaraStringi))
print(inteCevirenGuardLetFunc(st: numaraStringi))


//Switch - Case

/*
 if else if yerine switch case ile daha kısa bir şekilde yazabiliriz
 */

let gunSayisi = 8
var gunStringi = ""

if gunSayisi == 1 {
    gunStringi = "Pazartesi"
} else if gunSayisi == 2 {
    gunStringi = "Sali"
} else if gunSayisi == 3 {
    gunStringi = "Çarşamba"
} else if gunSayisi == 4 {
    gunStringi = "Perşembe"
} else if gunSayisi == 5 {
    gunStringi = "Cuma"
} else if gunSayisi == 6 {
    gunStringi = "Cumartesi"
} else if gunSayisi == 7 {
    gunStringi = "Pazar"
} else {
    print("yanlış girdiniz")
}

print(gunStringi)


switch gunSayisi {
case 1:
    gunStringi = "Pazartesi"
case 2:
    gunStringi = "Salı"
case 3:
    gunStringi = "Çarşamba"
case 4:
    gunStringi = "Perşembe"
case 5:
    gunStringi = "Cuma"
case 6:
    gunStringi = "Cumartesi"
case 7:
    gunStringi = "Pazar"
default:
    print("yanlış girdiniz")
}

print(gunStringi)


