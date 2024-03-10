//
//  XVerticalAttribute.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 10/03/24.
//

import UIKit

enum XVerticalAttribute {
    case top
    case bottom
    case center
}

extension XVerticalAttribute: XAttributeRepresentable {
    var nsAttribute: NSLayoutConstraint.Attribute {
        switch self {
        case .top:
            return .top
        case .bottom:
            return .bottom
        case .center:
            return .centerY
        }
    }
}
