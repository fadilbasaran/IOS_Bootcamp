import UIKit

//Array Kullanımı

var numaralar = [10,20,30]
var meyveler = [String]()

meyveler.append("Elma")
meyveler.append("Muz")
meyveler.append("Kiraz")
print(meyveler)

//Güncelleme

meyveler[0] = "Yeni Elma"
print(meyveler)

//Insert
meyveler.insert("Portakal", at: 2)
print(meyveler)

//Veri Okuma
print(meyveler[2])
let m = meyveler[0]
print(m)

print("Boyut : \(meyveler.count)")
print("Boş Kontrol : \(meyveler.isEmpty ? "Evet":"Hayır" )")

for (indeks, meyve) in meyveler.enumerated() {//Kotlinde withIndex olarak bir tanımlama yapılmaktadır
    print("\(indeks). -> \(meyve)")
    
}

meyveler.remove(at: 1)
print(meyveler)
meyveler.removeAll()
print(meyveler)


//Nesne Tabanlı

class Ogrenciler {
    
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int, ad:String, sinif:String){
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 200 , ad: "Zeynep", sinif: "9C")
var o2 = Ogrenciler(no: 300 , ad: "Ali", sinif: "5A")
var o3 = Ogrenciler(no: 100 , ad: "Mehmet", sinif: "10F")

var ogrencilerListesi = [Ogrenciler]()

ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)

for o in ogrencilerListesi {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}


//Filtreleme -- Filter

var f1 = ogrencilerListesi.filter({ $0.no! > 100 && $0.no! < 250})

print("Filtreleme-1")
for o in f1 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

var f2 = ogrencilerListesi.filter({ $0.ad!.contains("Al")})

print("Filtreleme-2")
for o in f2 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

//Sıralama - Sorting

var s1 = ogrencilerListesi.sorted(by: {$0.no! > $1.no!})//Büyükten güçüğe doğru sıralama yapılmaktadır

print("Sayısal büyükten küçüğe")
for o in s1 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}



var s2 = ogrencilerListesi.sorted(by: {$0.no! < $1.no!})//Küçükten büyüğe doğru sıralama yapılmaktadır

print("Sayısal büyükten küçüğe")
for o in s2 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}



var s3 = ogrencilerListesi.sorted(by: {$0.ad! > $1.ad!})
print("Metinsel olarak büyükten küçüğe")
for o in s3 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}
var s4 = ogrencilerListesi.sorted(by: {$0.ad! < $1.ad!})
print("Metinsel olarak küçükten büyüğe")
for o in s4 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}
