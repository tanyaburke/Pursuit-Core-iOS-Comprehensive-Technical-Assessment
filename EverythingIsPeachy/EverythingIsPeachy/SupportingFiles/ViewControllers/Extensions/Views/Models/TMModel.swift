//
//  TMModel.swift
//  EverythingIsPeachy
//
//  Created by Tanya Burke on 3/21/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//

import Foundation

//   let empty = try? newJSONDecoder().decode(Embedded.self, from: jsonData)

import Foundation

//to load all events at a location that the user searches for.  Include an image, the name of the event, and the time the event starts | In addition to the info from the Table View, display the price ranges and a link to the event.

struct Embedded: Codable {
    let events: [Event]
}

// MARK: - Event
struct Event: Codable {
    let name: String
    let type: EventType
    let id: String
    let test: Bool
    let url: String
    let locale: Locale
    let images: [TMImage]
    let sales: Sales
    let dates: Dates
    let classifications: [TMClassification]
    let promoter: Promoter?
    let promoters: [Promoter]?
    let info, pleaseNote: String?
    let priceRanges: [PriceRange]
    let products: [Product]?
    let seatmap: Seatmap?
    let ticketLimit: Accessibility?
    let links: EventLinks
    let embedded: EventEmbedded
    let accessibility: Accessibility?

    enum CodingKeys: String, CodingKey {
        case name, type, id, test, url, locale, images, sales, dates, classifications, promoter, promoters, info, pleaseNote, priceRanges, products, seatmap, ticketLimit
        case links = "_links"
        case embedded = "_embedded"
        case accessibility
    }
}

// MARK: - Accessibility
struct Accessibility: Codable {
    let info: String
}

// MARK: - Classification
struct TMClassification: Codable {
    let primary: Bool
    let segment, genre, subGenre, type: Genre
    let subType: Genre
    let family: Bool
}

// MARK: - Genre
struct Genre: Codable {
    let id, name: String
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

// MARK: - EventEmbedded
struct EventEmbedded: Codable {
    let venues: [Venue]
    let attractions: [Attraction]
}

// MARK: - Attraction
struct Attraction: Codable {
    let name: String
    let type: AttractionType
    let id: String
    let test: Bool
    let url: String
    let locale: Locale
    let images: [Image]
    let classifications: [Classification]
    let upcomingEvents: AttractionUpcomingEvents
    let links: AttractionLinks
    let externalLinks: ExternalLinks?
    let aliases: [String]?

    enum CodingKeys: String, CodingKey {
        case name, type, id, test, url, locale, images, classifications, upcomingEvents
        case links = "_links"
        case externalLinks, aliases
    }
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
    let id: String
    let test: Bool
    let url: String
    let locale: Locale
    let aliases: [String]?
    let images: [TMImage]
    let postalCode, timezone: String
    let city: City
    let state: State?
    let country: Country
    let address: Address
    let location: Location
    let markets: [Genre]
    let dmas: [DMA]
    let boxOfficeInfo: BoxOfficeInfo
    let parkingDetail: String?
    let accessibleSeatingDetail: String
    let generalInfo: GeneralInfo
    let upcomingEvents: VenueUpcomingEvents
    let links: AttractionLinks
    let social: Social?
    let ada: Ada?

    enum CodingKeys: String, CodingKey {
        case name, type, id, test, url, locale, aliases, images, postalCode, timezone, city, state, country, address, location, markets, dmas, boxOfficeInfo, parkingDetail, accessibleSeatingDetail, generalInfo, upcomingEvents
        case links = "_links"
        case social, ada
    }
}

// MARK: - Ada
struct Ada: Codable {
    let adaPhones, adaCustomCopy, adaHours: String
}

// MARK: - Address
struct Address: Codable {
    let line1: String
}

// MARK: - BoxOfficeInfo
struct BoxOfficeInfo: Codable {
    let phoneNumberDetail, openHoursDetail, acceptedPaymentDetail: String?
    let willCallDetail: String
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

// MARK: - DMA
struct DMA: Codable {
    let id: Int
}

// MARK: - GeneralInfo
struct GeneralInfo: Codable {
    let generalRule, childRule: String
}

// MARK: - Location
struct Location: Codable {
    let longitude, latitude: String
}

// MARK: - Social
struct Social: Codable {
    let twitter: Twitter
}

// MARK: - Twitter
struct Twitter: Codable {
    let handle: String
}

// MARK: - State
struct State: Codable {
    let name, stateCode: String
}

enum VenueType: String, Codable {
    case venue = "venue"
}

// MARK: - VenueUpcomingEvents
struct VenueUpcomingEvents: Codable {
    let total, ticketmaster: Int

    enum CodingKeys: String, CodingKey {
        case total = "_total"
        case ticketmaster
    }
}

// MARK: - EventLinks
struct EventLinks: Codable {
    let linksSelf: First
    let attractions, venues: [First]

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case attractions, venues
    }
}

// MARK: - PriceRange
struct PriceRange: Codable {
    let type: PriceRangeType
    let currency: Currency
    let min, max: Double
}

enum Currency: String, Codable {
    case gbp = "GBP"
    case usd = "USD"
}

enum PriceRangeType: String, Codable {
    case standard = "standard"
    case standardIncludingFees = "standard including fees"
}

// MARK: - Product
struct Product: Codable {
    let id: String
    let url: String
    let type, name: String
}

// MARK: - Promoter
struct Promoter: Codable {
    let id: String
    let name: PromoterName
    let promoterDescription: Description

    enum CodingKeys: String, CodingKey {
        case id, name
        case promoterDescription = "description"
    }
}

enum PromoterName: String, Codable {
    case broadwayInHollywood = "BROADWAY IN HOLLYWOOD"
    case liveNationMusic = "LIVE NATION MUSIC"
    case liveNationMusicUkLtd = "LIVE NATION MUSIC UK LTD"
    case liveNationNoLnConcertsBranding = "LIVE NATION - NO LN CONCERTS BRANDING"
    case promotedByVenue = "PROMOTED BY VENUE"
}

enum Description: String, Codable {
    case broadwayInHollywoodLOCHollywood = "BROADWAY IN HOLLYWOOD / LOC / HOLLYWOOD"
    case liveNationMusicNtlUsa = "LIVE NATION MUSIC / NTL / USA"
    case liveNationMusicUkLtdNtlGbr = "LIVE NATION MUSIC UK LTD / NTL / GBR"
    case liveNationNoLnConcertsBrandingNtlUsa = "LIVE NATION - NO LN CONCERTS BRANDING / NTL / USA"
    case promotedByVenueNtlUsa = "PROMOTED BY VENUE / NTL / USA"
}

// MARK: - Sales
struct Sales: Codable {
    let salesPublic: Public
    let presales: [Presale]?

    enum CodingKeys: String, CodingKey {
        case salesPublic = "public"
        case presales
    }
}

// MARK: - Presale
struct Presale: Codable {
    let startDateTime, endDateTime: Date
    let name: String
    let presaleDescription: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case startDateTime, endDateTime, name
        case presaleDescription = "description"
        case url
    }
}

// MARK: - Public
struct Public: Codable {
    let startDateTime: Date
    let startTBD: Bool
    let endDateTime: Date
}

// MARK: - Seatmap
struct Seatmap: Codable {
    let staticURL: String

    enum CodingKeys: String, CodingKey {
        case staticURL = "staticUrl"
    }
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

// MARK: - Page
struct Page: Codable {
    let size, totalElements, totalPages, number: Int
}
