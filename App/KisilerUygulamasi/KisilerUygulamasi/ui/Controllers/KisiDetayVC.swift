//
//  KisiDetay.swift
//  KisilerUygulamasi
//
//  Created by Fadıl Başaran on 2.12.2023.
//

import UIKit

class KisiDetayVC: UIViewController {

    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let k = kisi{
            tfKisiAd.text = k.kisi_ad
            tfKisiTel.text = k.kisi_tel
        }
    }
    

    @IBAction func buttonGuncelle(_ sender: Any) {
        if let kisiAdi = tfKisiAd.text , let kisiTel = tfKisiTel.text, let k = kisi {
            guncelle(kisi_id: k.kisi_id!, kisi_ad: kisiAdi, kisi_tel: kisiTel)
        }
    }
    func guncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String){
        
        print("Kisi Güncellendi :\(kisi_id) - \(kisi_ad) - \(kisi_tel)")
    }

}
