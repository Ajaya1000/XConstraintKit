//
//  XDimensionConstraint.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit

/// Size of the UIView
public enum XDimensionConstraint {
    /// width of the UIView
    case width(constant: CGFloat = 0.0, withReferenceView: Bool = false)
    /// height of the UIView
    case height(constant: CGFloat = 0.0, withReferenceView: Bool = false)
}

extension XDimensionConstraint: XLayoutDimensionConstraintable {
    public func nsLayoutConstraint(for childView: UIView, with referenceView: UIView?) -> NSLayoutConstraint {
        // to store the final constraint
        let constraint: NSLayoutConstraint
        
        // initialize constraint
        switch self {
        case let .width(constant, withReferenceView):
            // Initializing width anchor
            // and assigning it to constraint
            
            // checking if the constraint request with a reference view
            if !withReferenceView {
                constraint = childView.widthAnchor.constraint(equalToConstant: constant)
            } else if let referenceView {
                // creating constraint with reference view
                constraint = childView.widthAnchor.constraint(equalTo: referenceView.widthAnchor, constant: constant)
            } else {
                ErrorUtility.shared.fatalError(msg: Constants.NonLocalisedString.referenceViewNotFound)
            }
        case let .height(constant, withReferenceView):
            // Initializing height anchor
            // and assigning it to constraint
            if !withReferenceView {
                constraint = childView.heightAnchor.constraint(equalToConstant: constant)
            } else if let referenceView {
                // creating constraint with reference view
                constraint = childView.heightAnchor.constraint(equalTo: referenceView.heightAnchor, constant: constant)
            } else {
                ErrorUtility.shared.fatalError(msg: Constants.NonLocalisedString.referenceViewNotFound)
            }
        }
        
        // return the constraint
        return constraint
    }
}
