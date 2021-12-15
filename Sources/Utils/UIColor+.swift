//
//  Color.swift
//  CardTabbar
//
//  Created by Yusa Dogru on 25.11.2021.
//

import UIKit

extension UIColor {
    static let barTintColor = UIColor(named: "color_background")
    static let backgroundColor = UIColor(named: "color_shadow")
    static let tintColor = UIColor(named: "color_indicator")
    
    convenience init?(named: String) {
        self.init(named: named, in: .resourceBundle, compatibleWith: nil)
    }
}
