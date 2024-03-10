//
//  ExpressibleByAnchors.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 10/03/24.
//

import UIKit

public protocol ExpressibleByAnchors {
    var leading: XHorizontalAnchor { get }
    var trailing: XHorizontalAnchor { get }
    var centerX: XHorizontalAnchor { get }
    
    var top: XVerticalAnchor { get }
    var bottom: XVerticalAnchor { get }
    var centerY: XVerticalAnchor { get }
}
