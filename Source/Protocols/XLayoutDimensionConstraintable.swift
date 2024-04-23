//
//  XLayoutDimensionConstraintable.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit
/// deprecated
/// Width and Height Constraint
public protocol XLayoutDimensionConstraintable {
    /// Creates ``NSLayoutConstraint`` for the constraint using the ``constraint`` method with the super view
    /// - Parameters:
    ///   - childView: Child View
    ///   - referenceView: The Parent View
    /// - Returns: return the  ``NSLayoutConstraint`` for the constraint
    func nsLayoutConstraint(for childView: ExpressibleByAnchors, with referenceView: ExpressibleByAnchors?) -> NSLayoutConstraint
}
