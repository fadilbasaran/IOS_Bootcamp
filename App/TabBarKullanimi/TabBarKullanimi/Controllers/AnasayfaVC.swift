//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by Fadıl Başaran on 23.11.2023.
//

import UIKit

class AnasayfaVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items{
            let anasayfaItem = tabItems[0]
            let ayaralarItem = tabItems[1]
            
            anasayfaItem.badgeValue = "3"
            
            ayaralarItem.badgeValue = "Yeni"
        }
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemIndigo
        
        renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
        
        
        
        
        
    }
    func renkDegistir(itemAppearance:UITabBarItemAppearance){
        //Seçili durum
        itemAppearance.selected.iconColor = UIColor.systemOrange
        itemAppearance.selected.titleTextAttributes = [.foregroundColor:UIColor.systemOrange ]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
        
        //Seçili olmayan durum
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor:UIColor.white ]
        itemAppearance.normal.badgeBackgroundColor = UIColor.lightGray
    }

}

