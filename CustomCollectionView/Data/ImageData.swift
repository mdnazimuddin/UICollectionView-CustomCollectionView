//
//  ImageData.swift
//  CustomCollectionView
//
//  Created by Nazim Uddin on 27/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit
class ImageData {
    var arrayData:[ImageModel] = [ImageModel]()
    static var share = ImageData()
    func getData()->[ImageModel]{
        arrayData = [
            ImageModel(img: UIImage(named: "b1.jpg"), title: "Bangladesh"),
            ImageModel(img: UIImage(named: "b2.jpg"), title: "Bangladesh"),
            ImageModel(img: UIImage(named: "b3.jpg"), title: "Bangladesh"),
            ImageModel(img: UIImage(named: "b4.jpg"), title: "Bangladesh"),
            ImageModel(img: UIImage(named: "b5.jpg"), title: "Bangladesh"),
            ImageModel(img: UIImage(named: "b6.jpg"), title: "Bangladesh"),
            ImageModel(img: UIImage(named: "b7.jpg"), title: "Bangladesh"),
            ImageModel(img: UIImage(named: "b8.jpg"), title: "Bangladesh"),
            ImageModel(img: UIImage(named: "b9.jpg"), title: "Bangladesh"),
            ImageModel(img: UIImage(named: "b10.jpg"), title: "Bangladesh"),
            
            ImageModel(img: UIImage(named: "m1.jpg"), title: "Malaysia"),
            ImageModel(img: UIImage(named: "m2.jpg"), title: "Malaysia"),
            ImageModel(img: UIImage(named: "m3.jpg"), title: "Malaysia"),
            ImageModel(img: UIImage(named: "m4.jpg"), title: "Malaysia"),
            ImageModel(img: UIImage(named: "m5.jpg"), title: "Malaysia"),
            ImageModel(img: UIImage(named: "m6.jpg"), title: "Malaysia"),
            ImageModel(img: UIImage(named: "m7.jpg"), title: "Malaysia"),
            ImageModel(img: UIImage(named: "m8.jpg"), title: "Malaysia"),
            ImageModel(img: UIImage(named: "m9.jpg"), title: "Malaysia"),
            ImageModel(img: UIImage(named: "m10.jpg"), title: "Malaysia"),
            
            ImageModel(img: UIImage(named: "p1.jpg"), title: "Pakistan"),
            ImageModel(img: UIImage(named: "p2.jpg"), title: "Pakistan"),
            ImageModel(img: UIImage(named: "p3.jpg"), title: "Pakistan"),
            ImageModel(img: UIImage(named: "p4.jpg"), title: "Pakistan"),
            ImageModel(img: UIImage(named: "p5.jpg"), title: "Pakistan"),
            ImageModel(img: UIImage(named: "p6.jpg"), title: "Pakistan"),
            ImageModel(img: UIImage(named: "p7.jpg"), title: "Pakistan"),
            ImageModel(img: UIImage(named: "p8.jpg"), title: "Pakistan"),
            ImageModel(img: UIImage(named: "p9.jpg"), title: "Pakistan"),
            ImageModel(img: UIImage(named: "p10.jpg"), title: "Pakistan")
        ]
        return arrayData
    }
}
