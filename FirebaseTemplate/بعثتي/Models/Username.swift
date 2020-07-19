//
//  register.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/12/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import Foundation

struct User: Codable {
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var emailConfirm: String = ""
    var password: String = ""
    var passwordConfirm: String = ""
    var gender: String = ""
    var birthdate: String = ""
    
    func getFullName() -> String{
        firstName + " " + lastName
     }
}

struct SignInCredentials: Encodable {
    var email: String
    var password: String
}


