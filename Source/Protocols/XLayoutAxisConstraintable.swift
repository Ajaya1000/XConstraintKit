//
//  XLayoutAxisConstraintable.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit

/// Horizontal and Vertical Constraint
protocol XLayoutAxisConstraintable {
    /// Creates ``NSLayoutConstraint`` for the constraint using
    ///   ``constraint`` method
    /// - Parameters:
    ///   - childView: view for which the constraint is to be added
    ///   - superView: view with respect to which the constraint is to be added
    /// - Returns: return the ``NSLayoutConstraint`` for the constraint
    func nsLayoutConstraint(for childView: ExpressibleByAnchors, with superView: ExpressibleByAnchors) -> NSLayoutConstraint
}
