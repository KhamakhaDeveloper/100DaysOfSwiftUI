//
//  String.swift
//  TextFieldNButton
//
//  Created by Deepak Carpenter on 27/07/20.
//

import Foundation
import UIKit

extension String {
    func isValidEmail() -> Bool {
           // here, `try!` will always succeed because the pattern is valid
           let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
           return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
       }
    
    public func isValidPassword() -> Bool {
        let passwordRegex = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{8,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self)
    }
}
