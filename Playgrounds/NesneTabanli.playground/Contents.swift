import UIKit

/*
class Araba {
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    init(){
        print("Boş init metodu çalıştı..")
    }
    
    init(renk:String, hiz:Int, calisiyorMu:Bool){
        self.renk = renk
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu
        
        print("Dolu init metodu çalıştı..")
    }
    
    func calistir(){//Sidde effect
        calisiyorMu = true
        hiz = 5
    }
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(_ kacKm:Int){
        hiz! += kacKm
    }
    func yavasla(_ kacKm:Int){
        hiz! -= kacKm
    }
    
    func bilgiAl(){
        print("Renk         : \(renk!)")
        print("Hız          : \(hiz!)")
        print("Çalışıyor mu : \(calisiyorMu! ? "Çalışıyor": "Çalışmıyor")")
        print("-----------------")
    }
}
//Nesne oluşturma

var bmw = Araba(renk: "Kırmızı", hiz: 100, calisiyorMu: true)
//Değer atama
//bmw.renk = "Kırmızı"
//bmw.hiz = 100
//bmw.calisiyorMu = true


bmw.bilgiAl()

bmw.durdur()
bmw.hizlan(30)
bmw.yavasla(34)
bmw.bilgiAl()

bmw.calistir()
bmw.bilgiAl()


var sahin = Araba()
sahin.renk = "Mavi"
sahin.hiz = 100
sahin.calisiyorMu = false

sahin.bilgiAl()
sahin.calistir()
sahin.bilgiAl()


class Fonksiyonlar {
    
    //Geri dönüş değeri olmayan(void)
    func selamlar1(){
        let sonuc = "Merhaba Selamlar1"
        
        print(sonuc)
    }
    
    //Geri dönüş değeri olan(String)
    func selamlar2() -> String {
        let sonuc = "Merhaba Selamlar2"
        
        return sonuc
    }
    
    //Parametre kullanımı
    func selamlar3(isim:String) {
       print("Merhaba, \(isim)")
    }
    
    func toplama(sayi1:Int,sayi2:Int) -> Int{
        
        return sayi1 + sayi2
    }
    func carpma(sayi1:Int,sayi2:Int){
        print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Double,sayi2:Double){
        print("Çarpma : \(sayi1 * sayi2)")
    }
    func carpma(sayi1:Double,sayi2:Double,isim:String){
        print("Çarpma :  \(sayi1 * sayi2) - İşlemi yapan : \(isim)")
    }
}

let fonk = Fonksiyonlar()

fonk.selamlar1()

var selam = fonk.selamlar2()
print(selam)

fonk.selamlar3(isim: "Ali")

let toplam = fonk.toplama(sayi1: 5, sayi2: 40)
print("Toplam Değer : \(toplam)")

fonk.carpma(sayi1: 23, sayi2: 23)
fonk.carpma(sayi1: 20.3, sayi2: 23.33)
fonk.carpma(sayi1: 23, sayi2: 22, isim: "Fadıl")

*/

//Static değişkenler ve metotlar
/*v
class ASinifi{
   static var x = 10
    
   static func metod(){
        print("Metot çalıştı")
    }
    
}

let a = ASinifi()

print(a.x)
a.metod()

print(ASinifi().x)//Sanal nesne - virtual object

ASinifi().metod()


print(ASinifi.x)
ASinifi.metod()

 */

/*
//Enumeration
enum KonserveBoyut{
    case kucuk
    case orta
    case buyuk
    
}

func ucretHesapla(boyut:KonserveBoyut,adet:Int){
    switch boyut {
        case .kucuk : print("Fiyat : \(adet * 13) ₺")
        case .orta : print("Fiyat : \(adet * 24) ₺")
        case .buyuk : print("Fiyat : \(adet * 45) ₺")
    }
}


ucretHesapla(boyut: .orta, adet: 100)
*/

//Compositon

class Kategoriler {
    
    var kategori_id:Int?
    var kategori_adi:String?
    
    init(kategori_id:Int, kategori_adi:String){
        self.kategori_id = kategori_id
        self.kategori_adi = kategori_adi
    }
}

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_adi:String?
    
    init(yonetmen_id:Int,yonetmen_adi:String){
        self.yonetmen_id = yonetmen_id
        self.yonetmen_adi = yonetmen_adi
    }
}

class Filmler{
    var film_id:Int?
    var film_adi:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id:Int,film_adi:String,film_yil:Int, kategori:Kategoriler,yonetmen:Yonetmenler){
        
        self.film_id = film_id
        self.film_adi = film_adi
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
        
    }
    
}

let k1 = Kategoriler(kategori_id: 1, kategori_adi: "Drama")
let k2 = Kategoriler(kategori_id: 2, kategori_adi: "Komedi")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_adi: "Quntin Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_adi: "Christopher Nolan")

let f1 = Filmler(film_id: 1, film_adi: "Django", film_yil: 2013, kategori: k1, yonetmen: y2)

print("Film id         : \(f1.film_id!)")
print("Film adı        : \(f1.film_adi!)")
print("Film yıl        : \(f1.film_yil!)")
print("Film kategorisi : \(f1.kategori!.kategori_adi!)")
print("Film yönetmeni  : \(f1.yonetmen!.yonetmen_adi!)")

