//
//  XLayoutDimensionConstraintable.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit

/// Width and Height Constraint
public protocol XLayoutDimensionConstraintable {
    /// Creates ``NSLayoutConstraint`` for the constraint using the ``constraint`` method with the super view
    /// - Parameters:
    ///   - childView: Child View
    ///   - referenceView: The Parent View
    /// - Returns: return the  ``NSLayoutConstraint`` for the constraint
    func nsLayoutConstraint(for childView: UIView, with referenceView: UIView?) -> NSLayoutConstraint
}

public extension XLayoutDimensionConstraintable {
    /// Creates ``NSLayoutConstraint`` for the constraint using the ``constraint`` method with the super view
    /// - Parameters:
    ///   - childView: Child View
    ///   - superView: The Parent View
    /// - Returns: return the  ``NSLayoutConstraint`` for the constraint
    func nsLayoutConstraint(for childView: UIView, with referenceView: UIView? = nil) -> NSLayoutConstraint {
        
        // return the constraint
        return nsLayoutConstraint(for: childView, with: referenceView)
    }
}

// default methods
public extension XLayoutDimensionConstraintable {
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
