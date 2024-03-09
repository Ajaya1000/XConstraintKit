//
//  XLayoutAxisConstraint.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit

/// Horizontal and Vertical Constraint
public protocol XLayoutAxisConstraint {
    /// Creates ``NSLayoutConstraint`` for the constraint using
    ///   ``constraint`` method
    /// - Parameters:
    ///   - childView: view for which the constraint is to be added
    ///   - superView: view with respect to which the constraint is to be added
    /// - Returns: return the ``NSLayoutConstraint`` for the constraint
    func nsLayoutConstraint(for childView: UIView, with superView: UIView) -> NSLayoutConstraint
    
    func nsLayoutConstraint(for childView: UIView, with layoutGuide: UILayoutGuide) -> NSLayoutConstraint
}

// default methods
public extension XLayoutAxisConstraint {
    @discardableResult
    /// activate & return the corresponding ``NSLayoutConstraint`` with the super view
    /// - Returns: return the  ``NSLayoutConstraint`` for the constraint
    func activateConstraint(for childView: UIView, with superView: UIView) -> NSLayoutConstraint {
        //get constrain with superview
        let constraint = nsLayoutConstraint(for: childView, with: superView)
        
        // activate the constraint
        constraint.activate()
        
        //return the constraint for furthure use
        return constraint
    }
    
    @discardableResult
    /// activate & return the corresponding ``NSLayoutConstraint`` with the layout guide
    /// - Returns: return the  ``NSLayoutConstraint`` for the constraint
    func activateConstraint(for childView: UIView, with layoutGuide: UILayoutGuide) -> NSLayoutConstraint {
        // get constraint with layoutguide
        let constraint = nsLayoutConstraint(for: childView, with: layoutGuide)
        
        //activate constraints
        constraint.activate()
        
        //return the constraint for furthure use
        return constraint
    }
}
