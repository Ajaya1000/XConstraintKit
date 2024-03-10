//
//  XLayoutConstraint.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 10/03/24.
//

import UIKit

public class XLayoutConstraint {
    var attribute1: XAttributeRepresentable
    var attribute2: XAttributeRepresentable?
    public private(set) var constant: CGFloat = 0.0
    public private(set) var multiplier: CGFloat = 1.0
    public private(set) var priority: Float = 1000
    public private(set) var comparator: XComparator = .equal
    
    /// Initialising with both the attributes
    /// In case of  axial constraint both attribute will be present, but
    /// for dimensional constraint second attribute may or may not present
    /// - Parameters:
    ///   - attribute1: first attribute
    ///   - attribute2: second attribute
    init(attribute1: XAttributeRepresentable, attribute2: XAttributeRepresentable?) {
        self.attribute1 = attribute1
        self.attribute2 = attribute2
    }
    
    public func nsLayoutConstraint(for childView: ExpressibleByAnchors, with superView: ExpressibleByAnchors? = nil) -> NSLayoutConstraint {
        // validating constraint
        guard isValidConstraint() else {
            ErrorUtility.shared.fatalError(msg: Constants.NonLocalisedString.invalidConstraint)
        }
        
        let constraint = NSLayoutConstraint(item: childView,
                                            attribute: attribute1.nsAttribute,
                                            relatedBy: comparator.nsRelation,
                                            toItem: superView,
                                            attribute: attribute2?.nsAttribute ?? .notAnAttribute,
                                            multiplier: multiplier,
                                            constant: constant)
        
        constraint.priority = .init(priority)
        
        return constraint
    }
    
    /// For validating constraint properties
    /// if required override on sub-classes
    /// - Returns: `true` if valid otherwise `false`
    func isValidConstraint() -> Bool {
        return true
    }
}

// MARK: - Public Methods
public extension XLayoutConstraint {
    /// Set the value of constant
    /// - Parameter value: The value of the constant
    /// - Returns: return `self`
    @discardableResult
    func constant(to value: CGFloat) -> Self {
        self.constant = value
        // return self
        return self
    }
    /// Set the value of multiplier
    /// - Parameter value: The value of the multiplier
    /// - Returns: return `self`
    @discardableResult
    func multiplier(by value: CGFloat) -> Self {
        self.multiplier = value
        // return self
        return self
    }
    /// Set the value of priority
    /// - Parameter value: The value of the priority
    /// - Returns: return `self`
    @discardableResult
    func priority(of value: Float) -> Self {
        self.priority = value
        // return self
        return self
    }
}
