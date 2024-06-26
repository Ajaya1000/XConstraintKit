//
//  XLayoutConstraint+Dimension.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 13/03/24.
//

import Foundation

// MARK: - XLayoutDimensionConstraint Initializers
public extension XLayoutConstraintMaker {
    /// width of the UIView
    var width: XDimensionConstraint {
        .init(attribute1: XDimensionAttribute.width, attribute2: nil)
    }
    
    var height: XDimensionConstraint {
        .init(attribute1: XDimensionAttribute.height, attribute2: nil)
    }
}
