//
//  InspirationCell.swift
//  UltraVisual
//
//  Created by Shantanu Dutta on 25/08/18.
//  Copyright © 2018 Shantanu Dutta. All rights reserved.
//

import UIKit

class InspirationCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageCoverView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeAndRoomLabel: UILabel!
    @IBOutlet weak var speakerLabel: UILabel!
    
    var inspiration: Inspiration? {
        didSet {
            if let inspiration = inspiration {
                imageView.image = inspiration.backgroundImage
                titleLabel.text = inspiration.title
                timeAndRoomLabel.text = inspiration.roomAndTime
                speakerLabel.text = inspiration.speaker
            }
        }
    }
    
    override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
        super.apply(layoutAttributes)
        
        //1 These are the two convenience height constants you've used previously.
        let standardHeight = UltravisualLayoutConstants.Cell.standardHeight
        let featuredHeight = UltravisualLayoutConstants.Cell.featuredHeight
        
        //2 Calculate the delta of the cell as it's moving, to figure out how much to adjust the alpha in the following step.
        let delta = 1 - ((featuredHeight - frame.height) / (featuredHeight - standardHeight))
        
        //3 Based on the range constants, update the cell's alpha based on the delta value.
        let minAlpha: CGFloat = 0.3
        let maxAlpha: CGFloat = 0.75
        imageCoverView.alpha = maxAlpha - (delta * (maxAlpha - minAlpha))
        
        let scale = max(delta, 0.5)
        titleLabel.transform = CGAffineTransform(scaleX: scale, y: scale)
        timeAndRoomLabel.alpha = delta
        speakerLabel.alpha = delta
    }
}
