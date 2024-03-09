//
//  XVerticalConstraint.swift
//  Pods-FalconX
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit

/// Vertical Position in the super view
enum XVerticalConstraint: XLayoutAxisConstraint {
    /// constraint of top anchor
    ///  - Parameters:
    ///     - constants: distance
    ///     - reverse: if ``reverse`` is true then calculates from from the super view bottom anchor else top anchor
    case top(constant: CGFloat = 0.0, reverse: Bool = false)
    /// constraint of bottom anchor
    ///  - Parameters:
    ///     - constants: distance
    ///     - reverse: if ``reverse`` is true then calculates from from the super view top anchor else bottom anchor
    case bottom(constant: CGFloat = 0.0, reverse: Bool = false)
    /// positioned directly center to super view in vertical direction
    case center
    
    func nsLayoutConstraint(for childView: UIView, with superView: UIView) -> NSLayoutConstraint {
        // to store the final constraint
        let constraint: NSLayoutConstraint
        
        // initialize constraint
        switch self {
        case .top(let constant, let reverse):
            // get the super view anchor
            let superViewAnchor = reverse ? superView.bottomAnchor : superView.topAnchor
            
            // Initializing top anchor
            // and assigning it to constraint
            constraint = childView.topAnchor.constraint(equalTo: superViewAnchor, constant: constant)
        case .bottom(let constant, let reverse):
            // get the super view anchor
            let superViewAnchor = reverse ? superView.topAnchor : superView.bottomAnchor
            
            // Initializing bottom anchor
            // and assigning it to constraint
            constraint = childView.bottomAnchor.constraint(equalTo: superViewAnchor, constant: -constant)
        case .center:
            // Initializing Y-axis center anchor
            // and assigning it to constraint
            constraint = childView.centerYAnchor.constraint(equalTo: superView.centerYAnchor)
        }
        
        // return the constraint
        return constraint
    }
    
    func nsLayoutConstraint(for childView: UIView, with layoutGuide: UILayoutGuide) -> NSLayoutConstraint {
        // to store the final constraint
        let constraint: NSLayoutConstraint
        
        // initialize constraint
        switch self {
        case .top(let constant, let reverse):
            // get the super view anchor
            let superViewAnchor = reverse ? layoutGuide.bottomAnchor : layoutGuide.topAnchor
            
            // Initializing top anchor
            // and assigning it to constraint
            constraint = childView.topAnchor.constraint(equalTo: superViewAnchor, constant: constant)
        case .bottom(let constant, let reverse):
            // get the super view anchor
            let superViewAnchor = reverse ? layoutGuide.topAnchor : layoutGuide.bottomAnchor
            
            // Initializing bottom anchor
            // and assigning it to constraint
            constraint = childView.bottomAnchor.constraint(equalTo: superViewAnchor, constant: -constant)
        case .center:
            // Initializing Y-axis center anchor
            // and assigning it to constraint
            constraint = childView.centerYAnchor.constraint(equalTo: layoutGuide.centerYAnchor)
        }
        
        // return the constraint
        return constraint
    }
}
