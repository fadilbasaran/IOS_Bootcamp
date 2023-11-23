//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Fadıl Başaran on 22.11.2023.
//

import UIKit

class AnasayfaVC: UIViewController {
    let kisi = Kisiler(ad: "Ali", yas: 23, boy: 1.60, bekarMi: true)
    
    @IBOutlet weak var labelAnasayfa: UILabel!
    //Leading - Left - Start(Android)
    //Trailing - Right - End
    
    
    override func viewDidLoad() {//Uygulama ilk açıldığında çalışır(1 kere çalışır)
        super.viewDidLoad()
        labelAnasayfa.text = "Hoşgeldiniz"
        print("viewDidload çalıştı...")
    }
    
    override func viewWillAppear(_ animated: Bool) {//Sayfa her göründüğünde çalışır.
        print("viewWillAppear çalıştı...")
        //Sayfaya geri dönüldüğünde çalışır
    }
    override func viewDidDisappear(_ animated: Bool) {//Sayfa her görünmez olduğunda çalışır
        
            print("viewDidDisappear çalıştı...")
    }
    
    
    @IBAction func buttonYap(_ sender: Any) {
        
        labelAnasayfa.text = "Merhaba"
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Hangi geçiş olursa olsun bu fonksiyon çalışacaktır
        print("prepare metodu çalıştı")
        
        //Bu geçişi dinliyoruz
        if segue.identifier == "oyunEkraninaGecis"{
         
            
            if let veri = sender as? Kisiler{//DownCasting yapılıyor
            
                
                let gidilecekVC = segue.destination as! OyunEkraniVC
                
                gidilecekVC.kisi = veri
            }
        }
    }
    
    
    @IBAction func buttonAdd(_ sender: Any) {
        
        print("Add seçildi")
    }
    
    @IBAction func buttonSave(_ sender: Any) {
        print("Save seçildi")
    }
}

