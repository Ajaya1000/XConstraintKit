//
//  XLayoutConstraint.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit

/// Horizontal and Vertical Constraint
protocol XLayoutAxisConstraint {
    /// Creates ``NSLayoutConstraint`` for the constraint using
    ///   ``constraint`` method
    /// - Parameters:
    ///   - childView: view for which the constraint is to be added
    ///   - superView: view with respect to which the constraint is to be added
    /// - Returns: return the ``NSLayoutConstraint`` for the constraint
    func nsLayoutConstraint(for childView: UIView, with superView: UIView) -> NSLayoutConstraint
    
    func nsLayoutConstraint(for childView: UIView, with layoutGuide: UILayoutGuide) -> NSLayoutConstraint
}

/// Width and Height Constraint
protocol XLayoutDimensionConstraint {
    /// Creates ``NSLayoutConstraint`` for the constraint using
    ///   ``constraint`` method
    /// - Returns: return the  ``NSLayoutConstraint`` for the constraint
    func nsLayoutConstraint(for childView: UIView) -> NSLayoutConstraint
}
