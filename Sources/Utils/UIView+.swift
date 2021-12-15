//
//  UIView+.swift
//  CardTabbar
//
//  Created by Yusa Dogru on 25.11.2021.
//

import UIKit

extension UIView {
    static func build<T: UIView>(_ builder: ((T) -> Void)? = nil) -> T {
        let view = T()
        view.translatesAutoresizingMaskIntoConstraints = false
        builder?(view)

        return view
    }
}
