//
//  XLayoutDimensionConstraint.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 10/03/24.
//

import UIKit

public class XLayoutDimensionConstraint: XLayoutConstraint, XLayoutDimensionConstraintable {
}

// MARK: - XLayoutDimensionConstraint Initializers
public extension XLayoutDimensionConstraint {
    /// width of the UIView
    static var width: XDimensionConstraint {
        .init(attribute1: XDimensionAttribute.width, attribute2: nil)
    }
    
    static var height: XDimensionConstraint {
        .init(attribute1: XDimensionAttribute.height, attribute2: nil)
    }
}
