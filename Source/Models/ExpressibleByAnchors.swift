//
//  ExpressibleByAnchors.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 10/03/24.
//

import UIKit

public protocol ExpressibleByAnchors {
    
}

public extension ExpressibleByAnchors {
    func activate(with superView: ExpressibleByAnchors? = nil,
                  @XLayoutConstraintBuilder constraints: (XLayoutConstraintMaker) -> [XLayoutConstraint]) {
        let xc = XLayoutConstraintMaker()
        let xContraints = constraints(xc)
        
        xContraints.activateConstraints(for: self, with: superView)
    }
    
    func nsLayout(with superView: ExpressibleByAnchors? = nil,
                  constraint: @escaping (XLayoutConstraintMaker) -> XLayoutConstraint) -> NSLayoutConstraint{
        let xc = XLayoutConstraintMaker()
        let xContraint = constraint(xc)
        
        return xContraint.nsLayoutConstraint(for: self, with: superView)
    }
}
