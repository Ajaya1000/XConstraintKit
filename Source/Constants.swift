//
//  Constants.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 10/03/24.
//

import Foundation

struct Constants {
    struct NonLocalisedString {
        static var referenceViewNotFound: String {
            "reference view not found, but constraint asked with the reference view."
        }
        
        static var methodNotImplemented: String {
            "nsLayoutConstraint(:) method be implemented by the subclass"
        }
        
        static var invalidConstraint: String {
            "Unable to create valid constraint. Make sure you are provide all required parameters"
        }
    }
}
