//
//  CustomCollectionViewCell.swift
//  CustomCollectionView
//
//  Created by Nazim Uddin on 27/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var img: UIImageView!
    var viewData:ImageModel!{
        didSet{
            img.image = viewData.img
        }
    }
}
