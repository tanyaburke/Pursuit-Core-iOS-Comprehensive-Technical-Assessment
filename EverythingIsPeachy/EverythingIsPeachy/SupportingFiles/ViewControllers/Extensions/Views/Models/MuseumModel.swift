//
//  File.swift
//  EverythingIsPeachy
//
//  Created by Tanya Burke on 3/19/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//
//to load all museum items from a name that the user searches for.  Include an image and the title of the item.


struct Empty: Codable {
   
    let countFacets: CountFacets
    let artObjects: [ArtObject]
    let detailObjectPage: DetailObject?
 
}


struct ArtObject: Codable {
    let links: Links
    let id: String
    let objectNumber: String
    let title: String
    let hasImage: Bool
    let principalOrFirstMaker: PrincipalOrFirstMaker
    let longTitle: String
    let showImage: Bool
    let permitDownload: Bool
    let webImage: Image
    let headerImage: Image
    let productionPlaces: [String]
    let dateFavorited: String?
    let favorited: Bool?
}


struct Image: Codable {
    let guid: String
    let offsetPercentageX: Int
    let offsetPercentageY: Int
    let width:Int
    let height: Int
    let url: String
}


struct Links: Codable {
    let linksSelf: String
    let web: String

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case web
    }
}

enum PrincipalOrFirstMaker: String, Codable {
    case rembrandtVanRijn = "Rembrandt van Rijn"
}


struct CountFacets: Codable {
    let hasimage, ondisplay: Int
}

struct DetailObject: Codable {
    let links: DetailLinks
    let id, priref, objectNumber, language: String
    let title: String
    let copyrightHolder: JSONNull?
    let webImage: WebImage
    let colors: [Color]
    let colorsWithNormalization: [ColorsWithNormalization]
    let normalizedColors, normalized32Colors: [Color]
    let titles: [String]
    let artObjectDescription: String
    let labelText: JSONNull?
    let objectTypes, objectCollection: [String]
    let makers: [JSONAny]
    let principalMakers: [PrincipalMaker]
    let plaqueDescriptionDutch, plaqueDescriptionEnglish, principalMaker: String
    let artistRole: JSONNull?
    let associations: [JSONAny]
    let acquisition: Acquisition
    let exhibitions: [JSONAny]
    let materials: [String]
    let techniques: [JSONAny]
    let productionPlaces: [String]
    let dating: Dating
    let classification: Classification
    let hasImage: Bool
    let historicalPersons: [String]
    let inscriptions: [JSONAny]
    let documentation: [String]
    let catRefRPK: [JSONAny]
    let principalOrFirstMaker: String
    let dimensions: [Dimension]
    let physicalProperties: [JSONAny]
    let physicalMedium, longTitle, subTitle, scLabelLine: String
    let label: Label
    let showImage: Bool
    let location: String

    enum CodingKeys: String, CodingKey {
        case links, id, priref, objectNumber, language, title, copyrightHolder, webImage, colors, colorsWithNormalization, normalizedColors, normalized32Colors, titles
        case artObjectDescription = "description"
        case labelText, objectTypes, objectCollection, makers, principalMakers, plaqueDescriptionDutch, plaqueDescriptionEnglish, principalMaker, artistRole, associations, acquisition, exhibitions, materials, techniques, productionPlaces, dating, classification, hasImage, historicalPersons, inscriptions, documentation, catRefRPK, principalOrFirstMaker, dimensions, physicalProperties, physicalMedium, longTitle, subTitle, scLabelLine, label, showImage, location
    }
}

// MARK: - Acquisition
struct Acquisition: Codable {
    let method, date, creditLine: String
}

// MARK: - Classification
struct Classification: Codable {
    let iconClassIdentifier, iconClassDescription: [String]
    let motifs, events, periods: [JSONAny]
    let places, people, objectNumbers: [String]
}

// MARK: - Color
struct Color: Codable {
    let percentage: Int
    let hex: String
}

// MARK: - ColorsWithNormalization
struct ColorsWithNormalization: Codable {
    let originalHex, normalizedHex: String
}

// MARK: - Dating
struct Dating: Codable {
    let presentingDate: String
    let sortingDate, period, yearEarly, yearLate: Int
}

// MARK: - Dimension
struct Dimension: Codable {
    let unit, type: String
    let part: JSONNull?
    let value: String
}

// MARK: - Label
struct Label: Codable {
    let title, makerLine, labelDescription, notes: String
    let date: String

    enum CodingKeys: String, CodingKey {
        case title, makerLine
        case labelDescription = "description"
        case notes, date
    }
}

// MARK: - Links
struct DetailLinks: Codable {
    let search: String
}

// MARK: - PrincipalMaker
struct PrincipalMaker: Codable {
    let name: String
    let unFixedName: JSONNull?
    let placeOfBirth, dateOfBirth: String
    let dateOfBirthPrecision: JSONNull?
    let dateOfDeath: String
    let dateOfDeathPrecision: JSONNull?
    let placeOfDeath: String
    let occupation, roles: [String]
    let nationality: String
    let biography: JSONNull?
    let productionPlaces: [String]
    let qualification: JSONNull?
}

// MARK: - WebImage
struct WebImage: Codable {
    let guid: String
    let offsetPercentageX, offsetPercentageY, width, height: Int
    let url: String
}

// MARK: - ArtObjectPage
struct ArtObjectPage: Codable {
    let id: String
    let similarPages: [JSONAny]
    let lang, objectNumber: String
    let tags: [JSONAny]
    let plaqueDescription: String
    let audioFile1, audioFileLabel1, audioFileLabel2: JSONNull?
    let createdOn, updatedOn: String
    let adlibOverrides: AdlibOverrides
}

// MARK: - AdlibOverrides
struct AdlibOverrides: Codable {
    let titel, maker, etiketText: JSONNull?
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}

