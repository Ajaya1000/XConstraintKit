//
//  XHorizontalConstraint.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit

/// Horizontal Position in the super view
public enum XHorizontalConstraint {
    /// constraints of left anchor
    ///  - Parameters:
    ///     - constants: distance
    ///     - reverse: if ``reverse`` is true then calculates from from the super view right anchor else left anchor
    case left(constant: CGFloat = 0.0, reverse: Bool = false)
    /// constraints of right anchor
    ///  - Parameters:
    ///     - constants: distance
    ///     - reverse: if ``reverse`` is true then calculates from from the super view left anchor else right anchor
    case right(constant: CGFloat = 0.0, reverse: Bool = false)
    /// positioned directly center to super view in horizontal direction
    case center
}

extension XHorizontalConstraint: XLayoutAxisConstraint {
    public func nsLayoutConstraint(for childView: UIView, with superView: UIView) -> NSLayoutConstraint {
        // to store the final constraint
        let constraint: NSLayoutConstraint
        
        // initialize constraint
        switch self {
        case .left(let constant, let reverse):
            // get the super view anchor
            let superViewAnchor = reverse ? superView.trailingAnchor : superView.leadingAnchor
            
            // Initializing leading anchor
            // and assigning it to constraint
            constraint = childView.leadingAnchor.constraint(equalTo: superViewAnchor, constant: constant)
        case .right(let constant, let reverse):
            // get the super view anchor
            let superViewAnchor = reverse ? superView.leadingAnchor : superView.trailingAnchor
            
            // Initializing trailing anchor
            // and assigning it to constraint
            constraint = childView.trailingAnchor.constraint(equalTo: superViewAnchor, constant: -constant)
        case .center:
            // Initializing X-axis center anchor
            // and assigning it to constraint
            constraint = childView.centerXAnchor.constraint(equalTo: superView.centerXAnchor)
        }
        
        // return the constraint
        return constraint
    }
    
    public func nsLayoutConstraint(for childView: UIView, with layoutGuide: UILayoutGuide) -> NSLayoutConstraint {
        // to store the final constraint
        let constraint: NSLayoutConstraint
        
        // initialize constraint
        switch self {
        case .left(let constant, let reverse):
            // get the super view anchor
            let superViewAnchor = reverse ? layoutGuide.trailingAnchor : layoutGuide.leadingAnchor
            
            // Initializing leading anchor
            // and assigning it to constraint
            constraint = childView.leadingAnchor.constraint(equalTo: superViewAnchor, constant: constant)
        case .right(let constant, let reverse):
            // get the super view anchor
            let superViewAnchor = reverse ? layoutGuide.leadingAnchor : layoutGuide.trailingAnchor
            
            // Initializing trailing anchor
            // and assigning it to constraint
            constraint = childView.trailingAnchor.constraint(equalTo: superViewAnchor, constant: -constant)
        case .center:
            // Initializing X-axis center anchor
            // and assigning it to constraint
            constraint = childView.centerXAnchor.constraint(equalTo: layoutGuide.centerXAnchor)
        }
        
        // return the constraint
        return constraint
    }
}
