//
//  DongGiaoDienCollectionViewCell.swift
//  GiaoDien
//
//  Created by Van Thanh on 8/31/20.
//  Copyright © 2020 Van Thanh. All rights reserved.
//

import UIKit

class DongGiaoDienCollectionViewCell: UICollectionViewCell, UICollectionViewDelegateFlowLayout {
    var card : TinTuc?
   
   
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var mess: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func load(_ card: TinTuc)  {
        self.card = card
        mess.text = card.content
        img.image = UIImage(named: card.img!)
    }
    
    
}
