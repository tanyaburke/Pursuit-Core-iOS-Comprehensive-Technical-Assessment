//
//  File.swift
//  EverythingIsPeachy
//
//  Created by Tanya Burke on 3/19/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//
//to load all museum items from a name that the user searches for.  Include an image and the title of the item.

//
//   let empty = try? newJSONDecoder().decode(Museum.self, from: jsonData)

import Foundation

struct Museum: Codable {
    
    let artObjects: [ArtObject]
  
}

struct ArtObject: Codable {
    let links: Links
    let id: String
    let objectNumber: String
    let title: String
    let hasImage: Bool
    let principalOrFirstMaker: PrincipalOrFirstMaker
    let longTitle: String
    let webImage: Image
    let productionPlaces: [String]
}

struct Image: Codable {
    let url: String
}

struct Links: Codable {
    let web: String
}

enum PrincipalOrFirstMaker: String, Codable {
    case rembrandtVanRijn = "Rembrandt van Rijn"
}

//extension Item {
//init(_ dictionary: [String: Any]) {
//  self.itemName = dictionary["itemName"] as? String ?? "no item name"
