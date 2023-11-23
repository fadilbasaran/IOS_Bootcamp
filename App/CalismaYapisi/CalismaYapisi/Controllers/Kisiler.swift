//
//  Kisiler.swift
//  CalismaYapisi
//
//  Created by Fadıl Başaran on 23.11.2023.
//

import Foundation

class Kisiler{
    
    var ad:String?
    var yas:Int?
    var boy:Double?
    var bekarMi:Bool?
    
    init(){
        
    }
    
    init(ad: String, yas: Int, boy: Double, bekarMi: Bool) {
        self.ad = ad
        self.yas = yas
        self.boy = boy
        self.bekarMi = bekarMi
    }
}
