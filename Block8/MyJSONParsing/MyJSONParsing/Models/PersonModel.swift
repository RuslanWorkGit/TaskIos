//
//  PersonModel.swift
//  MyJSONParsing
//
//  Created by Ruslan Liulka on 10.09.2022.
//

import Foundation

// MARK: - Product
struct UserData: Codable {
    let user: User
}

// MARK: - User
struct User: Codable {
    let avatar: String
    let email, firstName: String
    let gender: Gender
    let lastName, nickname, password, stringShort: String

    enum CodingKeys: String, CodingKey {
        case avatar, email
        case firstName = "first_name"
        case gender
        case lastName = "last_name"
        case nickname, password, stringShort
    }
}

enum Gender: String, Codable {
    case female = "female"
    case male = "male"
}

typealias Products = [UserData]
