//
//  Inspiration.swift
//  UltraVisual
//
//  Created by Shantanu Dutta on 25/08/18.
//  Copyright © 2018 Shantanu Dutta. All rights reserved.
//

import UIKit

class Inspiration: Session {
    class func allInspirations() -> [Inspiration] {
        var inspirations = [Inspiration]()
        if let url = Bundle.main.url(forResource: "Inspirations", withExtension: "plist") {
            if let tutorialsFromPlist = NSArray(contentsOf: url){
                for dictionary in tutorialsFromPlist {
                    let inspiration = Inspiration(dictionary: dictionary as! NSDictionary)
                    inspirations.append(inspiration)
                }
            }
        }
        return inspirations
    }
}

