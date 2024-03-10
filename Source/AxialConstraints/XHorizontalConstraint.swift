//
//  XHorizontalConstraint.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit

/// Horizontal Position in the super view
public class XHorizontalConstraint: XLayoutAxisConstraint {
    public var withLeading: XHorizontalConstraint {
        self.attribute2 = XHorizontalAttribute.leading
        
        return self
    }
    
    public var withTrailing: XHorizontalConstraint {
        self.attribute2 = XHorizontalAttribute.trailing
        
        return self
    }
    
    public var withCenter: XHorizontalConstraint {
        self.attribute2 = XHorizontalAttribute.center
        
        return self
    }
}
