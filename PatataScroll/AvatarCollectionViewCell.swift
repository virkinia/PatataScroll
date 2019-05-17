//
//  AvatarCollectionViewCell.swift
//  PatataScroll
//
//  Created by Dev2 on 17/05/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import UIKit

class AvatarCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgSelfie: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!

    func configure(name: String, imageName: String) {
        nameLabel.text = name
        
        if let imagen = UIImage(named: imageName) {
                imgSelfie.image = imagen
        }
    }
    
}
