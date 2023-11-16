import UIKit
/*
class Ev {
    var pencereSayisi:Int?
    init( pencereSayisi:Int){
        self.pencereSayisi = pencereSayisi
    }
    
}

class Saray:Ev {
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int,pencereSayisi:Int){
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}

class Villa:Ev {
    var garajVarMi:Bool?
    
    init(garajVarMi:Bool,pencereSayisi:Int){
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
}

let topKapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)
let bogazVilla = Villa(garajVarMi: true, pencereSayisi: 30)

print(topKapiSarayi.kuleSayisi!)
print(topKapiSarayi.pencereSayisi!)

//Override

class Hayvan {
    func sesCikar(){
        print("Sesim yok")
    }
}

class Memeli: Hayvan{
   
}

class Kedi:Memeli {
    override func sesCikar() {
        print("Miyav Miyav")
    }
}

class Kopek:Memeli {
    override func sesCikar() {
        print("Hav Hav")
    }
}


let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()

hayvan.sesCikar()//Kalıtım yok, kendi fonksiyonunu çalıştırdı.
memeli.sesCikar()//Kalıtım var, üst fonksiyonunu çalıştırdı.
kedi.sesCikar()//Kalıtım var, kendi fonksiyonunu çalıştırdı.
kopek.sesCikar()//Kalıtım var, kendi fonksiyonunu çalıştırdı.



//Tip Dönüşümü

//Upcasting
var ev = Saray(kuleSayisi: 10, pencereSayisi: 112) as Ev

//DownCasting
var saray = Ev(pencereSayisi: 23) as? Saray

if ev is Ev {
    print("Nesne ev sınıfındandır.")
}else {
    print("Nesne ev sınfından değildir.")
}
*/


//Protocol

protocol MyProtocol{
    var degisken:Int {get set}
    func metod1()
    func metod2()->String

}
class ClassA:MyProtocol{
    var degisken: Int = 10
    
    func metod1() {
        print("Metod1 çalıştı")
    }
    
    func metod2() -> String {
        return "Metod2 çalıştı"
    }
}

var a=ClassA()

print(a.degisken)
a.metod1()

print(a.metod2())

extension Int{
    func carpa(sayi:Int) -> Int{
        return self * sayi //self dışarıdan gelen değerleri temsil etmektedir.
    }
}


