//
//  InspirationsViewController.swift
//  UltraVisual
//
//  Created by Shantanu Dutta on 25/08/18.
//  Copyright © 2018 Shantanu Dutta. All rights reserved.
//

import UIKit
import ChameleonFramework

class InspirationsViewController: UICollectionViewController {
    
    let inspirations = Inspiration.allInspirations()
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if let patternImage = UIImage(named: "Pattern") {
            view.backgroundColor = UIColor(patternImage: patternImage)
        }
        collectionView?.decelerationRate = UIScrollViewDecelerationRateFast
//        let layout = collectionViewLayout as! UICollectionViewFlowLayout
//        layout.itemSize = CGSize(width: collectionView!.bounds.width, height: 100)
    }
}

extension InspirationsViewController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return inspirations.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InspirationCell", for: indexPath) as! InspirationCell
        cell.inspiration = inspirations[indexPath.item]
//        cell.contentView.backgroundColor = UIColor.randomFlat
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let layout = collectionViewLayout as! UltravisualLayout
        let offset = layout.dragOffset * CGFloat(indexPath.item)
        if collectionView.contentOffset.y != offset {
            collectionView.setContentOffset(CGPoint(x: 0, y: offset), animated: true)
        }
    }
}

