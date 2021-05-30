//
//  User.swift
//  Authorization
//
//  Created by Алексей on 29.05.2021.
//

import Foundation


struct User {
    let name: String
    let lastName: String
    let age: Int
    let photo: String
    let currentCity: String
    let relationship: String
    let birthday: String
    let login: String
    let password: String    
    let hobby: [Hobby]
    let profession: [Profession]
}
