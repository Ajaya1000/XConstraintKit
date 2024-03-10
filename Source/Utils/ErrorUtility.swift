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
    
    func fatalError(msg: String, file: String = #file, line: Int = #line) -> Never {
        Swift.fatalError(getErrorString(msg, file: file, line: line))
    }
}


extension ErrorUtility {
    private func getErrorString(_ msg: String, file: String, line: Int) -> String {
        """
        \(msg)
        in
        \(file)
        on Line: \(line)
        """
    }
}
