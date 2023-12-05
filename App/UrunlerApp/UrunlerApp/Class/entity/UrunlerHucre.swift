//
//  UrunlerHucre.swift
//  UrunlerApp
//
//  Created by Fadıl Başaran on 6.12.2023.
//

import UIKit

class UrunlerHucre: UITableViewCell {

    @IBOutlet weak var hucreArkaplan: UIView!
    
    @IBOutlet weak var imageViewUrun: UIImageView!
    
    @IBOutlet weak var labelUrunAd: UILabel!
    
    @IBOutlet weak var labelUrunFiyat: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func buttonSepeteEkle(_ sender: Any) {
    }

}
