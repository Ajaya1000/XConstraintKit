//
//  XDimensionAttribute.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 11/03/24.
//

import UIKit

enum XDimensionAttribute {
    case width
    case height
}

extension XDimensionAttribute: XAttributeRepresentable {
    var nsAttribute: NSLayoutConstraint.Attribute {
        switch self {
        case .width:
            return .width
        case .height:
            return .height
        }
    }
}
