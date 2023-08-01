//
//  String.swift
//  LoginApp
//
//  Created by Kharlo Pena on 6/28/23.
//

import Foundation

extension String{
    func isValidEmail() -> Bool{
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$",
                                             options: .caseInsensitive)
        return regex.firstMatch(in: self, range: NSRange(location: 0, length: count)) != nil
    }
}
