//
//  SayfaBVC.swift
//  Odev4_Sayfa_Gecisi
//
//  Created by Fadıl Başaran on 23.11.2023.
//

import UIKit

class SayfaBVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonYGit(_ sender: Any) {
        performSegue(withIdentifier: "sayfaYGecis", sender:nil)
        //navigationController?.popToRootViewController(animated: true)
    }
    

}
