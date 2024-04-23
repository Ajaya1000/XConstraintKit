//
//  XLayoutConstraintBuilder.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 24/04/24.
//

import Foundation

@resultBuilder
public struct XLayoutConstraintBuilder {
    public static func buildBlock(_ components: XLayoutConstraint...) -> [XLayoutConstraint] {
        Array(components)
    }
    
    public static func buildEither(first component: XLayoutConstraint) -> XLayoutConstraint {
        return component
    }
    
    public static func buildEither(second component: XLayoutConstraint) -> XLayoutConstraint {
        return component
    }
    
    public static func buildArray(_ components: [XLayoutConstraint]) -> [XLayoutConstraint] {
        return components
    }
}
