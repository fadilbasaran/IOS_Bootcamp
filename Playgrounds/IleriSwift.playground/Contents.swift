import UIKit


func kisiTanima(isim:String){
    if isim == "Ahmet"{
        print("Merhaba Ahmet")
    }else{
        print("Tanınmayan Kişi")
    }

}

kisiTanima(isim: "Ahmeto")


func kisiTanima2(isim:String){
    
    guard isim == "Ahmet" else{
        print("Tanınmayan Kişi")
        return //Bu satırda durdurmak için kullanılır ve devamını çalıştırmaz
    }
    
    print("Ahmet merhaba")

}

kisiTanima2(isim: "Ahmeto")


//Hata Ayıklama
//1.Compile Error : Editör Hataları

//let x = 10
//x = 34

//1.Runtime Error : Exception : Çalışma sırasında oluşan hatalar

//let sonuc = 10 / 0

enum Hatalar : Error{
    case sifiraBolunmeHatasi
}

func bolme(sayi1:Int, sayi2:Int)throws -> Int{
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}



do{
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi{
    print("Sayı sıfıra bölünmez")
}

let sonuc1 = try? bolme(sayi1: 10, sayi2: 4)//Eğer hata olursa sonuc nil olur

if let temp = sonuc1 {
    print(temp)
}else{
    print("Sayı sıfıra bölünmez")
}
