//
//  Encodable.swift
//  Decodable&EncodableJSON
//
//  Created by Juan Meza on 8/19/19.
//  Copyright © 2019 Juan Meza. All rights reserved.
//

import Foundation

struct GeoEnc: Encodable {
    var lat: String
    var lng: String
    
    init(lat: String, lng: String) {
        self.lat = lat
        self.lng = lng
    }
    
}

struct AddressEnc: Encodable {
    var street: String
    var suite: String
    var city: String
    var zipcode: String
    var geo: GeoEnc
    
    
    init(street: String, suite: String, city: String, zipcode: String, geo : GeoEnc) {
        self.street = street
        self.suite = suite
        self.city = city
        self.zipcode = zipcode
        self.geo = geo
    }
    
    
}

struct CompanyEnc: Encodable {
    var name: String
    var catchPhrase: String
    var bs: String
    
    init(name: String, catchPhrase: String, bs: String) {
        self.name = name
        self.catchPhrase = catchPhrase
        self.bs = bs
    }
    
    
}

struct PersonEnc: Encodable {
    var address: AddressEnc
    var company: CompanyEnc
    var id: Int
    var name: String
    var username: String
    var email: String
    var phone: String
    var website: String
    
    init(address: AddressEnc, company: CompanyEnc, id: Int, name: String, username: String, email: String, phone: String, website: String) {
        self.address = address
        self.company = company
        self.id = id
        self.name = name
        self.username = username
        self.email = email
        self.phone = phone
        self.website = website
    }
    
}
