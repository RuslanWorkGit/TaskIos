//
//  Models.swift
//  JSON parsing
//
//  Created by Ruslan Liulka on 05.09.2022.
//

import Foundation

struct UsersAllData: Codable {
    var type: String?
    var responseData: UsersData?
}

struct UsersData: Codable {
    var users: [Users]?
}

struct Users: Codable {
    var name: String?
    var info: UsersInfo?
}

struct UsersInfo: Codable{
    var age: Int?
    var height: Int?
}

