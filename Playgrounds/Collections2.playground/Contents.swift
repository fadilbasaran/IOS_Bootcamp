import UIKit


//Set

var meyveler = Set<String>()

//Veri ekleme

meyveler.insert("Elma")
meyveler.insert("Portakal")
meyveler.insert("Muz")

print(meyveler)


meyveler.insert("Amasya Elması")
print(meyveler)


for (indeks,meyve) in meyveler.enumerated() {
    print("\(indeks). -> \(meyve)")
}


print("Boyut : \(meyveler.count)")
print("Boş mu : \(meyveler.isEmpty)")

meyveler.remove("Elma")
print(meyveler)

meyveler.removeAll()
print(meyveler)


//Dictionary - HashMap - Map
var iller = [Int:String]()

//Veri Ekleme

iller[16] = "Bursa"
iller[34] = "İstanbul"

print(iller)

//Veri Okuma

print(iller[16]!)

//Veri güncelleme

iller[16] = "Yeni Bursa"
print(iller)


for (anahar,deger) in iller{
    print("\(anahar) -> \(deger)")
}


iller.removeValue(forKey: 16)

print(iller)
