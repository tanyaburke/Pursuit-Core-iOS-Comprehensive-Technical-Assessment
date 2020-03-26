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

//   let empty = try? newJSONDecoder().decode(Embedded.self, from: jsonData)


//to load all events at a location that the user searches for.  Include an image, the name of the event, and the time the event starts | In addition to the info from the Table View, display the price ranges and a link to the event.

struct Embedded: Codable {
    let events: [Event]
}

// MARK: - Event
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

   
    func addEvent(_ event: Event) {
        let db = Firestore.firestore()
        
        let favEvent = Event(name: event.name, type: event.type, id: event.id, url: event.url, locale: event.locale, images: event.images, dates: event.dates, info: event.info, pleaseNote: event.pleaseNote, priceRanges: event.priceRanges, accessibility: event.accessibility)
        
        do {
            try db.collection("ticketMasterExperience").document("favEvent").setData(from: favEvent)
        } catch {
            print("error saving to favorites\(error)")
        }
        
        
    }
    
    func readEvent() {
        let db = Firestore.firestore()
        
        db.collection("ticketMasterExperience").getDocuments { (snapshot, error) in
            if let error = error {
                print(error)
            } else if let snapshot = snapshot {
                let ticketMasterExperience  = snapshot.documents.compactMap {
                    return try? $0.data(as: ArtObject.self)
                }
            }
        }
    }
    
    
}





// MARK: - Accessibility
struct Accessibility: Codable {
    let info: String
}


// MARK: - Dates
struct Dates: Codable {
    let start: Start
    let timezone: String
    let status: Status
    let spanMultipleDays: Bool
}

// MARK: - Start
struct Start: Codable {
    let localDate, localTime: String
    let dateTime: Date
    let dateTBD, dateTBA, timeTBA, noSpecificTime: Bool
}

// MARK: - Status
struct Status: Codable {
    let code: Code
}

enum Code: String, Codable {
    case cancelled = "cancelled"
    case onsale = "onsale"
}

// MARK: - ExternalLinks
struct ExternalLinks: Codable {
    let youtube, twitter, itunes, lastfm: [Facebook]?
    let wiki: [Facebook]?
    let facebook: [Facebook]
    let musicbrainz: [Musicbrainz]
    let homepage: [Facebook]
    let instagram: [Facebook]?
}

// MARK: - Facebook
struct Facebook: Codable {
    let url: String
}

// MARK: - Musicbrainz
struct Musicbrainz: Codable {
    let id: String
}

// MARK: - Image
struct TMImage: Codable {
    let ratio: Ratio?
    let url: String
    let width, height: Int
    let fallback: Bool
    let attribution: String?
}

enum Ratio: String, Codable {
    case the16_9 = "16_9"
    case the3_1 = "3_1"
    case the3_2 = "3_2"
    case the4_3 = "4_3"
}

// MARK: - AttractionLinks
struct AttractionLinks: Codable {
    let linksSelf: First

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
    }
}

// MARK: - First
struct First: Codable {
    let href: String
}

enum Locale: String, Codable {
    case enDe = "en-de"
    case enUs = "en-us"
}

enum AttractionType: String, Codable {
    case attraction = "attraction"
}

// MARK: - AttractionUpcomingEvents
struct AttractionUpcomingEvents: Codable {
    let total, ticketmaster: Int
    let tmr: Int?

    enum CodingKeys: String, CodingKey {
        case total = "_total"
        case ticketmaster, tmr
    }
}

// MARK: - Venue
struct Venue: Codable {
    let name: String
    let type: VenueType
    
    let postalCode, timezone: String
    let city: City
    let state: State?
    let country: Country
    let address: Address
    let location: Location

    
}



// MARK: - Address
struct Address: Codable {
    let line1: String
}


// MARK: - City
struct City: Codable {
    let name: String
}
// MARK: - Country
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

// MARK: - Location
struct Location: Codable {
    let longitude, latitude: String
}



// MARK: - State
struct State: Codable {
    let name, stateCode: String
}

enum VenueType: String, Codable {
    case venue = "venue"
}


// MARK: - PriceRange
struct PriceRange: Codable {
    let type: PriceRangeType
    let currency: Currency
    let min, max: Double
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

// MARK: - Links
struct TMLinks: Codable {
    let first, linksSelf, next, last: First

    enum CodingKeys: String, CodingKey {
        case first
        case linksSelf = "self"
        case next, last
    }
}

