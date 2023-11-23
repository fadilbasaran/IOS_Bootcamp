//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Fadıl Başaran on 23.11.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        
        let iptalAction = UIAlertAction(title: "İptal", style: .destructive){
            action in
            print("İptal butonuna tıklandı")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .cancel){
            action in
            print("Tamam butonuna tıklandı")
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)//Görüntülemek için kullanılır
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        
        
        let iptalAction = UIAlertAction(title: "İptal", style: .destructive){
            action in
            print("İptal butonuna tıklandı")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .cancel){
            action in
            print("Tamam butonuna tıklandı")
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)//Görüntülemek için kullanılır
    }
    
    
    @IBAction func ButtonOzelAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        alertController.addTextField{textField in//0
            textField.placeholder = "SMS Kodunu giriniz"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
        }
        alertController.addTextField()//1
        
        let tamamAction = UIAlertAction(title: "Kaydet", style: .cancel){
            action in
            let tf = alertController.textFields![0] as UITextField
            let tf1 = alertController.textFields![1] as UITextField
            if let alinanVeri = tf.text, let alinanVeri1 = tf1.text{
                print("Alınan Veri : \(alinanVeri) - \(alinanVeri1)")
            }
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)//Görüntülemek için kullanılır
    }
    
}

