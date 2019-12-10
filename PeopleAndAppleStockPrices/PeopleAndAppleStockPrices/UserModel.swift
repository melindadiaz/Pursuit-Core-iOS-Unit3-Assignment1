//
//  Model.swift
//  PeopleAndAppleStockPrices
//
//  Created by Melinda Diaz on 12/10/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct AppleUser: Codable {
    let results:[UserInfo]
}

struct UserInfo: Codable {
    let name: PersonName
    let location: UserLocation
    let email: UserEmail
    let picture: Picture
}

struct PersonName: Codable {
    let title: String
    let first: String
    let last: String
}

struct UserLocation: Codable {
    let street: String
    let city: String
    let state: String
    let postcode: String
}

struct UserEmail: Codable {
    let username: String
    let password: String
}

struct Picture: Codable {
    let medium: String
}
