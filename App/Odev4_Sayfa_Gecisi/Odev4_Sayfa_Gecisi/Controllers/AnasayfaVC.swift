//
//  ViewController.swift
//  Odev4_Sayfa_Gecisi
//
//  Created by Fadıl Başaran on 23.11.2023.
//

import UIKit

class AnasayfaVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonAGit(_ sender: Any) {
        performSegue(withIdentifier: "sayfaAGecis", sender:nil)
    }
    
    @IBAction func buttonXGit(_ sender: Any) {
        performSegue(withIdentifier: "sayfaXGit", sender: nil)
    }
}

