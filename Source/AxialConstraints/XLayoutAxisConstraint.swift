//
//  XLayoutConstraint.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 10/03/24.
//

import UIKit

public class XLayoutAxisConstraint: XLayoutConstraint {
    override func isValidConstraint(for childView: ExpressibleByAnchors, with superView: ExpressibleByAnchors? = nil) -> Bool {
        return (superView != nil)
    }
}
