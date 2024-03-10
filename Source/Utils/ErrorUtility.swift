//
//  ErrorUtility.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 09/03/24.
//

import Foundation

class ErrorUtility {
    static var shared = ErrorUtility()
    
    private init() {}
    
    func fatalError(msg: String) -> Never {
        Swift.fatalError("XConstraintKit: \(#file) \(#line) \(msg)")
    }
}
