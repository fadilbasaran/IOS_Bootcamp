//
//  KisiKayitVC.swift
//  KisilerUygulamasi
//
//  Created by Fadıl Başaran on 2.12.2023.
//

import UIKit

class KisiKayitVC: UIViewController {
    
    
    
    
    @IBOutlet weak var tfKisiAdi: UITextField!
    
    
    @IBOutlet weak var tfKisiTel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
    @IBAction func buttonKaydet(_ sender: Any) {
        if let kisiAdi = tfKisiAdi.text , let kisiTel = tfKisiTel.text {
            kaydet(kisi_ad: kisiAdi, kisi_tel:kisiTel)
        }
    }
    
    func kaydet(kisi_ad:String,kisi_tel:String){
        
        print("Kisi Kaydet : \(kisi_ad) - \(kisi_tel)")
    }
    

}
