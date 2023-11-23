//
//  SayfaAVC.swift
//  Odev4_Sayfa_Gecisi
//
//  Created by Fadıl Başaran on 23.11.2023.
//

import UIKit

class SayfaAVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonBGit(_ sender: Any) {
        performSegue(withIdentifier: "sayfaBGecis", sender: nil)
    }
    
}
