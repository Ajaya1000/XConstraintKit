//
//  XVerticalConstraint.swift
//  Pods-FalconX
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit

/// Vertical Position in the super view
public class XVerticalConstraint: XLayoutAxisConstraint {
    public var withTop: XVerticalConstraint {
        self.attribute2 = XVerticalAttribute.top
        
        return self
    }
    
    public var withBottom: XVerticalConstraint {
        self.attribute2 = XVerticalAttribute.bottom
        
        return self
    }
    
    public var withCenter: XVerticalConstraint {
        self.attribute2 = XVerticalAttribute.center
        
        return self
    }
}

