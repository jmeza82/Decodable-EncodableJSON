//
//  Decodable.swift
//  Decodable&EncodableJSON
//
//  Created by Juan Meza on 8/19/19.
//  Copyright © 2019 Juan Meza. All rights reserved.
//

import Foundation

struct Geo: Decodable {
    var lat: String
    var lng: String
    
    init(lat: String, lng: String) {
        self.lat = lat
        self.lng = lng
    }
    
    enum CondingKeys: String, CodingKey {
        case lat = "lat", lng = "lng"
    }
}

struct Address: Decodable {
    var street: String
    var suite: String
    var city: String
    var zipcode: String
    var geo: Geo
    
    
    init(street: String, suite: String, city: String, zipcode: String, geo : Geo) {
        self.street = street
        self.suite = suite
        self.city = city
        self.zipcode = zipcode
        self.geo = geo
    }
    
    enum CodingKeys: String, CodingKey {
        case street = "street", suite = "suite", city = "city", zipcode = "zipcode", geo = "geo"
    }
}

struct Company: Decodable {
    var name: String
    var catchPhrase: String
    var bs: String
    
    init(name: String, catchPhrase: String, bs: String) {
        self.name = name
        self.catchPhrase = catchPhrase
        self.bs = bs
    }
    
    enum CodingKeys:  String, CodingKey {
        case name = "name", catchPhrase = "catchPhrase", bs = "bs"
    }
}

struct Person: Decodable {
    var address: Address
    var company: Company
    var id: Int
    var name: String
    var username: String
    var email: String
    var phone: String
    var website: String
    
    init(address: Address, company: Company, id: Int, name: String, username: String, email: String, phone: String, website: String) {
        self.address = address
        self.company = company
        self.id = id
        self.name = name
        self.username = username
        self.email = email
        self.phone = phone
        self.website = website
    }
    
    enum CodingKeys: String, CodingKey {
        case address = "address", company = "company", id = "id", name = "name", username = "username", email = "email", phone = "phone", website = "website"
    }
}
