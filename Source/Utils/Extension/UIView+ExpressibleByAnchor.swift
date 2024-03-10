//
//  UIView+ExpressibleByAnchor.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 10/03/24.
//

import UIKit

extension UIView: ExpressibleByAnchors {
    public var centerX: XHorizontalAnchor {
        self.centerXAnchor
    }
    
    public var centerY: XVerticalAnchor {
        self.centerYAnchor
    }
    
    public var leading: XHorizontalAnchor {
        self.leadingAnchor
    }
    
    public var trailing: XHorizontalAnchor {
        self.trailingAnchor
    }
    
    public var top: XVerticalAnchor {
        self.topAnchor
    }
    
    public var bottom: XVerticalAnchor {
        self.bottomAnchor
    }
}
