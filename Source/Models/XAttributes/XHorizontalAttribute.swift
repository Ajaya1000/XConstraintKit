//
//  XHorizontalAttribute.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 10/03/24.
//

import Foundation

enum XHorizontalAttribute {
    case leading
    case trailing
    case center
}

extension XHorizontalAttribute: XAttributeRepresentable {
    var nsAttribute: NSLayoutConstraint.Attribute {
        switch self {
        case .leading:
            return .leading
        case .trailing:
            return .trailing
        case .center:
            return .centerX
        }
    }
}
