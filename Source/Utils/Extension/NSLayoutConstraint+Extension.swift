//
//  NSLayoutConstraint+Extension.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 09/03/24.
//

import UIKit

public extension NSLayoutConstraint {
    func activate() {
        self.isActive = true
    }
    
    func deactivate() {
        self.isActive = false
    }
}
