//
//  KisilerHucreTableViewCell.swift
//  KisilerUygulamasi
//
//  Created by Fadıl Başaran on 2.12.2023.
//

import UIKit

class KisilerHucre: UITableViewCell {
    
    
    @IBOutlet weak var labelKisiAd: UILabel!
    
    @IBOutlet weak var labelKisiTel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
