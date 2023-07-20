//
//  Post.swift
//  NeedsNow
//
//  Created by Scholar on 7/18/23.
//

import Foundation

struct item {
    var itemName: String
    var itemQuantity: String
    
    init(itemName: String, itemQuantity: String) {
        self.itemName = itemName
        self.itemQuantity = itemQuantity
        
    }
}

struct Post: Identifiable {
    let id = UUID()
    var orgName: String
    var streetAddress: String
    var city: String
    var state: String
    //var items: [item]
    var items: [String]
//    var item: String
//    var quantity: String
    var neededBy: String
    var contact: String
    var other: String
    
    init(orgName: String, streetAddress: String, city: String, state: String, items: [String], neededBy: String, contact: String, other: String) {
        self.orgName = orgName
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
       // self.items = items
//        self.item = item
//        self.quantity = quantity
        
        self.items = items
        self.neededBy = neededBy
        self.contact = contact
        self.other = other
    }
}

extension Post {
    static let sampleData: [Post] =
    [
        Post(orgName: "Lynnwood Food Bank", streetAddress: "123 StreetName", city: "Lynnwood", state: "WA", items: ["macaroni, 6"], neededBy: "7/30/2023", contact: "425-294-1949", other: "kraft mac and cheese"),
        Post(orgName: "Seattle Humane", streetAddress: "216th Ave NE", city: "Seattle", state: "WA", items: ["blanket, 10"], neededBy: "4/21/2023", contact: "423-234-1129", other: "dog food and toys")
        
    ]
        
}

