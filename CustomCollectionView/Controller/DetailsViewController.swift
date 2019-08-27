//
//  DetailsViewController.swift
//  CustomCollectionView
//
//  Created by Nazim Uddin on 27/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    var imgView:UIImage!
    var strTitle:String!
    var detailsData:ImageModel!{
        didSet{
            imgView = detailsData.img
            strTitle = detailsData.title
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = imgView
        titleLbl.text = strTitle
    }
    

}
