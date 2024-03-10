//
//  XLayoutConstraint.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 10/03/24.
//

import UIKit

public class XLayoutAxisConstraint: XLayoutConstraint, XLayoutAxisConstraintable {
    public func nsLayoutConstraint(for childView: ExpressibleByAnchors, with superView: ExpressibleByAnchors) -> NSLayoutConstraint {
        super.nsLayoutConstraint(for: childView, with: superView)
    }
}

public extension XLayoutAxisConstraint {
    /// activate & return the corresponding ``NSLayoutConstraint`` with the super view
    /// - Returns: return the  ``NSLayoutConstraint`` for the constraint
    @discardableResult
    func activateConstraint(for childView: ExpressibleByAnchors, with superView: ExpressibleByAnchors) -> NSLayoutConstraint {
        //get constrain with superview
        let constraint = nsLayoutConstraint(for: childView, with: superView)
        
        // activate the constraint
        constraint.activate()
        
        //return the constraint for furthure use
        return constraint
    }
}

// MARK: - XHorizontalConstraint Initializers
public extension XLayoutAxisConstraint {
    /// constraints of left anchor
    ///  - Parameters:
    ///     - constants: distance
    static var left: XHorizontalConstraint {
        let constraint = XHorizontalConstraint(attribute1: XHorizontalAttribute.leading, attribute2: XHorizontalAttribute.leading)
        
        return constraint
    }
    /// constraints of right anchor
    ///  - Parameters:
    ///     - constants: distance
    static var right: XHorizontalConstraint {
        let constraint = XHorizontalConstraint(attribute1: XHorizontalAttribute.trailing, attribute2: XHorizontalAttribute.trailing)
        
        return constraint
    }
    /// positioned directly center to super view in horizontal direction
    static var centerX: XHorizontalConstraint {
        return XHorizontalConstraint(attribute1: XHorizontalAttribute.center, attribute2: XHorizontalAttribute.center)
    }
}

// MARK: - XHorizontalConstraint Initializers
public extension XLayoutAxisConstraint {
    /// constraints of left anchor
    ///  - Parameters:
    ///     - constants: distance
    static var top: XVerticalConstraint {
        let constraint = XVerticalConstraint(attribute1: XVerticalAttribute.top, attribute2: XVerticalAttribute.top)
        
        return constraint
    }
    /// constraints of right anchor
    ///  - Parameters:
    ///     - constants: distance
    static var bottom: XVerticalConstraint {
        let constraint = XVerticalConstraint(attribute1: XVerticalAttribute.bottom, attribute2: XVerticalAttribute.bottom)
        
        return constraint
    }
    /// positioned directly center to super view in horizontal direction
    static var centerY: XVerticalConstraint {
        return XVerticalConstraint(attribute1: XVerticalAttribute.center, attribute2: XVerticalAttribute.center)
    }
}
