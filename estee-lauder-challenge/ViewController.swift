//
//  ViewController.swift
//  estee-lauder-challenge
//
//  Created by afrin momin on 6/27/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var imageArray = [UIImage(named: "EL_18"), UIImage(named: "EL_20"), UIImage(named: "EL_22"), UIImage(named: "EL_24"), UIImage(named: "EL_26"), UIImage(named: "EL_27"), UIImage(named: "EL_28"), UIImage(named: "EL_29"),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // imageArray
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell

        cell.imgImage.image = imageArray[indexPath.row]
        return cell
    }
    
}

