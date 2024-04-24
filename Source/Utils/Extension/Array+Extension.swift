//
//  Array+Extension.swift
//  Pods-FalconX
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit

/// deprecated
extension Array where Element == XLayoutConstraint {
    /// Activates Dimensional Constraints
    /// - Parameter childView: child view for which constraints are to be added
    func activateConstraints(for childView: ExpressibleByAnchors, with superView: ExpressibleByAnchors? = nil) {
        getConstraints(for: childView, with: superView).activate()
    }
    
    func getConstraints(for childView: ExpressibleByAnchors, with superView: ExpressibleByAnchors? = nil) -> [NSLayoutConstraint] {
        return map { constraints in
            constraints.nsLayoutConstraint(for: childView, with: superView)
        }
    }
}

extension Array where Element == XLayoutDimensionConstraint {
    /// Activates Dimensional Constraints
    /// - Parameter childView: child view for which constraints are to be added
    func activateConstraints(for childView: ExpressibleByAnchors, with superView: ExpressibleByAnchors? = nil) {
        getConstraints(for: childView, with: superView).activate()
    }
    
    func getConstraints(for childView: ExpressibleByAnchors, with superView: ExpressibleByAnchors? = nil) -> [NSLayoutConstraint] {
        return map { constraints in
            constraints.nsLayoutConstraint(for: childView, with: superView)
        }
    }
}

extension Array where Element == XLayoutAxisConstraint {
    /// Activates Axis Constraints
    /// - Parameter childView: child view for which constraints are to be added
    /// - Parameter superView: super view with respect to which constraints are to be added
    func activateConstraints(for childView: ExpressibleByAnchors, with superView: ExpressibleByAnchors) {
        getConstraints(for: childView, with: superView).activate()
    }
    
    func getConstraints(for childView: ExpressibleByAnchors, with superView: ExpressibleByAnchors) -> [NSLayoutConstraint] {
        return map { constraints in
            constraints.nsLayoutConstraint(for: childView, with: superView)
        }
    }
}

extension Array where Element == NSLayoutConstraint {
    func activate() {
        NSLayoutConstraint.activate(self)
    }
    
    func deactivate() {
        NSLayoutConstraint.deactivate(self)
    }
}
