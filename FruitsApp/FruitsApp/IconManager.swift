//
//  IconManager.swift
//  FruitsApp
//
//  Created by Tihomir RAdeff on 30.03.22.
//

import Foundation
import UIKit

var current: String {
    return UIApplication.shared.alternateIconName ?? "apple"
}

func setIcon(_ appIcon: String, completion: ((Bool) -> Void)? = nil) {
    guard current != appIcon, UIApplication.shared.supportsAlternateIcons
    else {
        return
    }
    
    UIApplication.shared.setAlternateIconName(appIcon) { error in
        if let error = error {
            print("Error settings the alternate icon \(appIcon): \(error.localizedDescription)")
        }
        completion?(error != nil)
    }
}
