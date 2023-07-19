//
//  Post.swift
//  NeedsNow
//
//  Created by Scholar on 7/18/23.
//

import Foundation

struct Post: Identifiable {
    let id = UUID()
    var orgName: String
    var streetAddress: String
    var city: String
    var state: String
    var item: String
    var quantity: String
    var neededBy: String
    var contact: String
    var other: String
    
    init(orgName: String, streetAddress: String, city: String, state: String, item: String, quantity: String, neededBy: String, contact: String, other: String) {
        self.orgName = orgName
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.item = item
        self.quantity = quantity
        self.neededBy = neededBy
        self.contact = contact
        self.other = other
    }
}

extension Post {
    static let sampleData: [Post] =
    [
        Post(orgName: "Lynnwood Food Bank", streetAddress: "123 StreetName", city: "Lynnwood", state: "WA", item: "macaroni", quantity: "12", neededBy: "7/30/2023", contact: "425-294-1949", other: "kraft mac and cheese"),
        Post(orgName: "Seattle Humane", streetAddress: "216th Ave NE", city: "Seattle", state: "WA", item: "blanket", quantity: "10", neededBy: "4/21/2023", contact: "423-234-1129", other: "dog food and toys")
        
    ]
        
}

