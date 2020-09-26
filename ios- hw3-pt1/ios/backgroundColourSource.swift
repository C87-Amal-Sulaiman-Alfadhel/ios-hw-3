//
//  backgroundColourSource.swift
//  ios
//
//  Created by Amal Alfadhel on 9/26/20.
//  Copyright © 2020 Amal Alfadhel. All rights reserved.
//

import Foundation
import UIKit
import GameKit

struct backgroundColourSource {
    let colors = [
        UIColor (red: 202.0/255, green: 185.0/255, blue: 241.0/255, alpha: 1.0),
        UIColor (red: 181.0/255, green: 240.0/255, blue: 211.0/255, alpha: 1.0),
        UIColor (red: 239.0/255, green: 180.0/255, blue: 193.0/255, alpha: 1.0),
        UIColor (red: 255.0/255, green: 241.0/255, blue: 166.0/255, alpha: 1.0)
    ]
    func randomColor() -> UIColor {
        let colorIndex =
            GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        return colors[colorIndex]
        
    }
}
