//
//  ViewController.swift
//  CustomCollectionView
//
//  Created by Nazim Uddin on 19/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var arrayData:[ImageModel]!
    var doubleTapGesture: UITapGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayData = ImageData.share.getData()
        navigationController?.navigationBar.prefersLargeTitles = true
        setUpDoubleTap()
    }

}
extension CustomCollectionViewController:UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CustomCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        cell.viewData = arrayData[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let details:DetailsViewController = storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        details.detailsData = arrayData[indexPath.row]
        navigationController?.pushViewController(details, animated: true)
    }
    
}
extension CustomCollectionViewController:UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.bounds.width
        return CGSize(width: collectionViewWidth/2-5, height: collectionViewWidth/2-2)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}
extension CustomCollectionViewController {
    func setUpDoubleTap(){
        doubleTapGesture = UITapGestureRecognizer(target: self, action: #selector(didDoubleTapCollectionView))
        doubleTapGesture.numberOfTapsRequired = 2
        collectionView.addGestureRecognizer(doubleTapGesture)
        
        doubleTapGesture.delaysTouchesBegan = true
    }
    @objc func didDoubleTapCollectionView(){
        let pointInCollectionView = doubleTapGesture.location(in: collectionView)
        if let seletedIndexPath = collectionView.indexPathForItem(at: pointInCollectionView) {
           // let seletedCell = collectionView.cellForItem(at: seletedIndexPath)
           // print(seletedIndexPath.row)
            let imageInfo = GSImageInfo(image: arrayData[seletedIndexPath.row].img, imageMode: .aspectFit)
            let transitionInfo = GSTransitionInfo(fromView: collectionView)
            let imageViewer = GSImageViewerController(imageInfo: imageInfo, transitionInfo: transitionInfo)
            
            imageViewer.dismissCompletion = {
                print("dismissCompletion")
            }
            present(imageViewer, animated: true, completion: nil)
        }
    }
}
