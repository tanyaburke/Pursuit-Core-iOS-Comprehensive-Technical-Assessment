//
//  TMModel.swift
//  EverythingIsPeachy
//
//  Created by Tanya Burke on 3/21/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//
import FirebaseFirestore
import Foundation
import FirebaseFirestoreSwift

//   let empty = try? newJSONDecoder().decode(Ticket.self, from: jsonData)


//to load all events at a location that the user searches for.  Include an image, the name of the event, and the time the event starts | In addition to the info from the Table View, display the price ranges and a link to the event.

struct Ticket: Codable {
    let events: [Event]
}

struct Event: Codable {
  
    let name: String
    let type: EventType
    let id: String
    let url: String
    let locale: Locale
    let images: [TMImage]
    let dates: Dates
    let info: String?
    let pleaseNote: String?
    let priceRanges: [PriceRange]
    let accessibility: Accessibility?
}
struct Accessibility: Codable {
    let info: String
}

struct Dates: Codable {
    var start: Start
    let timezone: String
    let status: Status
    let spanMultipleDays: Bool
}

struct Start: Codable {
    var localDate: String
    var localTime: String
    let dateTime: Date
    let dateTBD, dateTBA, timeTBA, noSpecificTime: Bool
}

struct Status: Codable {
    let code: Code
}
enum Code: String, Codable {
    case cancelled = "cancelled"
    case onsale = "onsale"
}

struct TMImage: Codable {
 
    let url: String
}



enum Locale: String, Codable {
    case enDe = "en-de"
    case enUs = "en-us"
}

enum AttractionType: String, Codable {
    case attraction = "attraction"
}

struct City: Codable {
    let name: String
}

struct Country: Codable {
    let name: CountryName
    let countryCode: CountryCode
}

enum CountryCode: String, Codable {
    case gb = "GB"
    case us = "US"
}

enum CountryName: String, Codable {
    case greatBritain = "Great Britain"
    case unitedStatesOfAmerica = "United States Of America"
}

struct Location: Codable {
    let longitude: String
    let latitude: String
}

struct State: Codable {
    let name: String
    let stateCode: String
}

enum VenueType: String, Codable {
    case venue = "venue"
}

struct PriceRange: Codable {
    let type: PriceRangeType
    let currency: Currency
    let min: Double
    let max: Double
}

enum Currency: String, Codable {

    case usd = "USD"
}

enum PriceRangeType: String, Codable {
    case standard = "standard"
    case standardIncludingFees = "standard including fees"
}

enum EventType: String, Codable {
    case event = "event"
}



//
//extension Event {
//init(_ dictionary: [String: Any]) {
//    self.name = dictionary["name"] as? String ?? "no name"
//    self.type = dictionary["type"] as? EventType ?? []
//    self.id = dictionary["id"] as? String ?? "no id"
//    self.url = dictionary["url"] as? String ?? "no url"
//    let locale: Locale
//    let images: [TMImage]
//    let dates: Dates
//    let info: String?
//    let pleaseNote: String?
//    let priceRanges: [PriceRange]
//    let accessibility: Accessibility?
//    self.priceRanges = dictionary["priceRanges"] as? [PriceRange] ?? []
//    self.dates.start.localDate = dictionary["localDate"] as? String ?? "no Date"
//    self.dates.start.localTime = dictionary["localTime"] as? String ?? "no name"
//    self.name = dictionary["name"] as? String ?? "no name"
//    self.name = dictionary["name"] as? String ?? "no name"
//    self.name = dictionary["name"] as? String ?? "no name"
//}
//}
