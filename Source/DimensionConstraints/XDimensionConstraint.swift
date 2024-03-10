//
//  XDimensionConstraint.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit

/// Size of the UIView
public class XDimensionConstraint: XLayoutDimensionConstraint {
    public var withdWidth: XDimensionConstraint {
        self.attribute2 = XDimensionAttribute.width
        
        return self
    }
    
    public var withHeight: XDimensionConstraint {
        self.attribute2 = XDimensionAttribute.height
        
        return self
    }
}
