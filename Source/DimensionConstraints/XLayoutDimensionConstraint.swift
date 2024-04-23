//
//  XLayoutDimensionConstraint.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 10/03/24.
//

import UIKit

public class XLayoutDimensionConstraint: XLayoutConstraint {
    override func isValidConstraint(for childView: ExpressibleByAnchors, with superView: ExpressibleByAnchors? = nil) -> Bool {
        // if attribute2 is present so must be superview
        return (attribute2 == nil) || (attribute2 != nil && superView != nil)
    }
}
