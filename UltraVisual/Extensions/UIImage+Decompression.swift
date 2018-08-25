//
//  UIImage+Decompression.swift
//  UltraVisual
//
//  Created by Shantanu Dutta on 25/08/18.
//  Copyright © 2018 Shantanu Dutta. All rights reserved.
//

import UIKit

extension UIImage {
    var decompressedImage: UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, true, 0)
        draw(at: .zero)
        let decompressedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return decompressedImage
    }
}
