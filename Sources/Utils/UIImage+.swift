//
//  UIImage+.swift
//  CardTabbar
//
//  Created by Yusa Dogru on 25.11.2021.
//

import UIKit

extension UIImage {
    convenience init?(named: String) {
        self.init(named: named, in: .resourceBundle, compatibleWith: nil)
    }
}

class LocalBundle {}
extension Bundle {
    static let resourceBundle: Bundle = {
        #if SWIFT_PACKAGE
        return .module
        #else
        return Bundle(for: LocalBundle.self)
        #endif
    }()
}
