//
//  UILayoutGuide+ExpressibleByAnchor.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 10/03/24.
//

import UIKit

extension UILayoutGuide: ExpressibleByAnchors {
    public var xcKit: XCKitAnchorSet {
        XCKitAnchorSet(leading: leadingAnchor,
                       trailing: trailingAnchor,
                       centerX: centerXAnchor,
                       top: topAnchor,
                       bottom: bottomAnchor,
                       centerY: centerYAnchor)
    }
}
