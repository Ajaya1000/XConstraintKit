//
//  XHorizontalConstraint.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit

/// Horizontal Position in the super view
class XHorizontalConstraint: XLayoutAxisConstraint {
    private var anchorType: AnchorType
    
    init(anchorType: AnchorType) {
        self.anchorType = anchorType
    }
    
    override func nsLayoutConstraint(for childView: UIView, with superView: UIView) -> NSLayoutConstraint {
        // to store the final constraint
        let constraint: NSLayoutConstraint
        
        // initialize constraint
        switch anchorType {
        case let .left(reverse):
            // get the super view anchor
            let superViewAnchor = reverse ? superView.trailingAnchor : superView.leadingAnchor
            
            // Initializing leading anchor
            // and assigning it to constraint
            constraint = childView.leadingAnchor.constraint(equalTo: superViewAnchor, constant: constant)
        case let .right(reverse):
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
    
    override func nsLayoutConstraint(for childView: UIView, with layoutGuide: UILayoutGuide) -> NSLayoutConstraint {
        // to store the final constraint
        let constraint: NSLayoutConstraint
        
        // initialize constraint
        switch anchorType {
        case let .left(reverse):
            // get the super view anchor
            let superViewAnchor = reverse ? layoutGuide.trailingAnchor : layoutGuide.leadingAnchor
            
            // Initializing leading anchor
            // and assigning it to constraint
            constraint = childView.leadingAnchor.constraint(equalTo: superViewAnchor, constant: constant)
        case let .right(reverse):
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

extension XHorizontalConstraint {
    enum AnchorType {
        case left(reverse: Bool)
        case right(reverse: Bool)
        case center
    }
}
