//
//  SayfaYVC.swift
//  Odev4_Sayfa_Gecisi
//
//  Created by Fadıl Başaran on 23.11.2023.
//

import UIKit

class SayfaYVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonAnsayfaGit(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
