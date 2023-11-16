import UIKit
/*
var urun_id:Int = 3416
var urun_adi:String = "Macbook Pro"
var urun_adet:Int = 100
var urun_fiyat:Int = 34999
var urun_tedarikci:String = "Apple"

print("Ürün id        :\(urun_id)")//java + , kotlin ve dart $ ile kullanılıyor
print("Ürün Adı       :\(urun_adi)")
print("Ürün Adet      :\(urun_adet)")
print("Ürün Fiyat     :\(urun_fiyat)")
print("Ürün tedarikci :\(urun_tedarikci)")
*/

//Constant - Sabitler
//kotlin - val, java - final , dart - const


var sayi = 10
print(sayi)
sayi = 20
print(sayi)

//Tip Dönüşümü - Type Casting
//Sayısaldan sayısala dönüşüm

var i = 42
var d = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)
print(sonuc1)
print(sonuc2)

//Sayısaldan Metine
var sonuc3 = String(i)
var sonuc4 = String(d)
print(sonuc3)
print(sonuc4)

//Metinden sayıya

var yazi = "34."
if let sonuc5 = Int(yazi){
    print(sonuc5)
}else{
    print("Dönüşüm Hatası!")
}


