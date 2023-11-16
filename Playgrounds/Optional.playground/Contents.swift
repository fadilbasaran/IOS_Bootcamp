import UIKit

//Optinal = Nullable = Null Safety
//Tanımlama
var mesaj = "Merhaba"

//null, nil değişken tanımlama

//var str:String? = nil
var str:String?//Null olma ihtimalinin olduuğunu göstermektedir.
//str = "Merhaba"
if str != nil {
    print(str!)//unwrap
}else{
    print("str nil değer içeriyor")
}


//Optinal binding
if let temp = str {
    print(temp)//auto unwrap
}else{
    print("str nil değer içeriyor")
}

