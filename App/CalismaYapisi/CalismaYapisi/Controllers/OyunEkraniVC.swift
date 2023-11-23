//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Fadıl Başaran on 22.11.2023.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi:Kisiler?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi{
            
            print("-----Oyun EkranıVC------")
            print("Kişi adı      :\(k.ad!)")
            print("Kişi yas      :\(k.yas!)")
            print("Kişi boy      :\(k.boy!)")
            print("Kişi bekar mı :\(k.bekarMi!)")
        }
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        //Geri tuşunun görevi ne ise onun işlevini yapmktadır.
        navigationController?.popViewController(animated: true)
        
        //Anasayfaya dönüş yeni navigationun en başına döndürür
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    @IBAction func buttonBitir(_ sender: Any) {
       
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
        
        
        
    }
}
