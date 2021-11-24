//
//  hasNotch.swift
//  my1
//
//  Created by wajeeh hassan on 23/11/2021.
//

import Foundation


extension UIDevice {
    @available(iOS 11.0, *)
    var hasNotch: Bool {
        let bottom = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
        return bottom > 0
    }    
}
