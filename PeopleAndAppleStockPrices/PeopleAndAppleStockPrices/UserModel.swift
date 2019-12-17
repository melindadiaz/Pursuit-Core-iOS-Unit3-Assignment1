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
    let email: String
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
}

struct Picture: Codable {
    let medium: String
}

extension UserInfo {
    static func getUserInfo() -> [UserInfo] {//we need to be able to access the userinfo JSON //this must be lowercased in order for this to work.
        var userInfoArray = [UserInfo]()
        guard let url = Bundle.main.url(forResource: "userinfo", withExtension: "json") else { fatalError("BOMB")
            }
        //we do catch in order to handle any error
        var data = Data()
        do {
            data = try Data.init(contentsOf: url)//anything that says throws throws an error
            let holdDataForDecoding = try JSONDecoder().decode(AppleUser.self, from: data)//decode([AppleUser]) its trying decode the data from the top level. which is why you pick APPLEUSER
            userInfoArray = holdDataForDecoding.results//this variable is redeclared because of the scope rules (if you need to return something then create another var outside the scope)
        } catch { //the catch takes the error that is thrown and does what YOU want it to do (print, show alert, fatal error) its for you to know what is wrong aka silent failure(when you dont know whats wrong with your APP)
            print(error)
        //TODO: make a showAlert!!
        }
        return userInfoArray
    }
}
