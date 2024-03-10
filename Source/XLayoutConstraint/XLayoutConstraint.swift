//
//  XLayoutConstraint.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 10/03/24.
//

import Foundation

public class XLayoutConstraint: XLayoutAxisConstraintable {
    public private(set) var constant: CGFloat = 0.0
    public private(set) var multiplier: Float = 1.0
    public private(set) var priority: Int = 1000
    
    public func nsLayoutConstraint(for childView: UIView, with superView: UIView) -> NSLayoutConstraint {
        // must be overriden by subclass
        ErrorUtility.shared.fatalError(msg: Constants.NonLocalisedString.methodNotImplemented)
    }
    
    public func nsLayoutConstraint(for childView: UIView, with layoutGuide: UILayoutGuide) -> NSLayoutConstraint {
        // must be overriden by subclass
        ErrorUtility.shared.fatalError(msg: Constants.NonLocalisedString.methodNotImplemented)
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
    func multiplier(by value: Float) -> Self {
        self.multiplier = value
        // return self
        return self
    }
    /// Set the value of priority
    /// - Parameter value: The value of the priority
    /// - Returns: return `self`
    @discardableResult
    func priority(of value: Int) -> Self {
        self.priority = value
        // return self
        return self
    }
}

// MARK: - XHorizontalConstraint Initializers
public extension XLayoutConstraint {
    /// constraints of left anchor
    ///  - Parameters:
    ///     - constants: distance
    static func left(reverse: Bool = false) -> XLayoutConstraint {
        let constraint = XHorizontalConstraint(anchorType: .left(reverse: reverse))
        
        return constraint
    }
    /// constraints of right anchor
    ///  - Parameters:
    ///     - constants: distance
    static func right(reverse: Bool = false) -> XLayoutConstraint {
        let constraint = XHorizontalConstraint(anchorType: .right(reverse: reverse))
        
        return constraint
    }
    /// positioned directly center to super view in horizontal direction
    static func center() -> XLayoutConstraint {
        return XHorizontalConstraint(anchorType: .center)
    }
}
