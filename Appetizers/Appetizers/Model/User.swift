//
//  User.swift
//  Appetizers
//
//  Created by Lucas  Alcantara  on 15/11/24.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthday = Date()
    var extraNapkins = false
    var frequentRefills = false
}
