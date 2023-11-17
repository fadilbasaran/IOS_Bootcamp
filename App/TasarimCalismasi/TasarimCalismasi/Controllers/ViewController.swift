//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by Fadıl Başaran on 17.11.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Pizza"
    
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor:UIColor(named: "yaziRenk1")!,.font:UIFont(name: "Pacifico-Regular", size: 22)!]
        
        navigationController?.navigationBar.barStyle = .black //Koyu bir tema kullanıldığını belirtiyoruz
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }


}

