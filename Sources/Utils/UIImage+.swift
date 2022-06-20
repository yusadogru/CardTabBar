//
//  UIImage+.swift
//  CardTabbar
//
//  Created by Yusa Dogru on 25.11.2021.
//

import UIKit

private class LocalBundle {}
extension Bundle {
    static let resourceBundle: Bundle = {
        #if SWIFT_PACKAGE
        return .module
        #else
        return Bundle(for: LocalBundle.self)
        #endif
    }()
}
