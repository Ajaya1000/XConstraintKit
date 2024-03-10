//
//  XComparator.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 10/03/24.
//

import UIKit

public enum XComparator {
    case equal

    case lessThanOrEqual

    case greaterThanOrEqual
}

extension XComparator {
    var nsRelation: NSLayoutConstraint.Relation {
        switch self {
        case .equal:
            return .equal
        case .lessThanOrEqual:
            return .lessThanOrEqual
        case .greaterThanOrEqual:
            return .greaterThanOrEqual
        }
    }
}
