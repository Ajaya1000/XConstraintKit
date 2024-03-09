//
//  XLayoutDimensionConstraint.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit

/// Width and Height Constraint
public protocol XLayoutDimensionConstraint {
    /// Creates ``NSLayoutConstraint`` for the constraint using
    ///   ``constraint`` method
    /// - Returns: return the  ``NSLayoutConstraint`` for the constraint
    func nsLayoutConstraint(for childView: UIView) -> NSLayoutConstraint
}

// default methods
public extension XLayoutDimensionConstraint {
    @discardableResult
    func activateConstraint(for childView: UIView) -> NSLayoutConstraint {
        // get constraint with layoutguide
        let constraint = nsLayoutConstraint(for: childView)
        
        //activate constraints
        constraint.activate()
        
        //return the constraint for furthure use
        return constraint
    }
}
