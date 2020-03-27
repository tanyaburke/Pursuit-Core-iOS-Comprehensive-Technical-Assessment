//
//  File.swift
//  EverythingIsPeachy
//
//  Created by Tanya Burke on 3/19/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//
//to load all museum items from a name that the user searches for.  Include an image and the title of the item.
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Empty: Codable {
    
    let artObjects: [ArtObject]
    
}


struct ArtObject: Codable {
    
    let id: String //
    let objectNumber: String //
     let language: String? //
    let title: String //
    let webImage: Image //
    let titles: [String]? //
    
    let objectTypes: [String]? //
    let objectCollection: [String]?
    let plaqueDescriptionEnglish: String? //

    let hasImage: Bool?
    let principalOrFirstMaker: PrincipalOrFirstMaker?
    let longTitle: String
    let showImage: Bool
    let permitDownload: Bool?
   
    let headerImage: Image?
    let productionPlaces: [String]
    let dateFavorited: String?
    let favorited: Bool?
   
    
    let artObjectDescription: String?
    
   
    let principalMaker: String?
    let materials: [String]?
    
    
    
    
    
    func addMusItem(_ favObject: ArtObject) {
        let db = Firestore.firestore()
        
        let favMuseum = ArtObject(id: favObject.id, objectNumber: favObject.objectNumber, language: favObject.language ?? "", title: favObject.title, webImage: favObject.webImage, titles: favObject.titles, objectTypes: favObject.objectTypes, objectCollection: favObject.objectCollection, plaqueDescriptionEnglish: favObject.plaqueDescriptionEnglish, hasImage: favObject.hasImage, principalOrFirstMaker: favObject.principalOrFirstMaker, longTitle: favObject.longTitle, showImage: favObject.showImage, permitDownload: favObject.permitDownload, headerImage: favObject.headerImage, productionPlaces: favObject.productionPlaces, dateFavorited: favObject.dateFavorited, favorited: favObject.favorited, artObjectDescription: favObject.artObjectDescription, principalMaker: favObject.principalMaker, materials: favObject.materials)
        do {
            try db.collection("museumExperience").document("favMuseumItems").setData(from: favMuseum)
        } catch {
            print("error saving to favorites\(error)")
        }
        
        
    }
    
    func readMus() {
        let db = Firestore.firestore()
        
        db.collection("museumExperience").getDocuments { (snapshot, error) in
            if let error = error {
                print(error)
            } else if let snapshot = snapshot {
                let museumExperience = snapshot.documents.compactMap {
                    return try? $0.data(as: ArtObject.self)
                }
            }
        }
    }
    
    
    
    
}


struct Image: Codable {
    let guid: String
    let offsetPercentageX: Int
    let offsetPercentageY: Int
    let width:Int
    let height: Int
    let url: String
}


enum PrincipalOrFirstMaker: String, Codable {
    case rembrandtVanRijn = "Rembrandt van Rijn"
}





// MARK: - WebImage
struct WebImage: Codable {
    let guid: String
    let offsetPercentageX, offsetPercentageY, width, height: Int
    let url: String
}






//
//func addMusItem(_ favObject: ArtObject) {
//        let db = Firestore.firestore()
//
//    let favMuseum = ArtObject(id: favObject.id, objectNumber: favObject.objectNumber, title: favObject.title, hasImage: favObject.hasImage, principalOrFirstMaker: favObject.principalOrFirstMaker, longTitle: favObject.longTitle, showImage: favObject.showImage, permitDownload: favObject.permitDownload, webImage: favObject.webImage, headerImage: favObject.headerImage, productionPlaces: favObject.productionPlaces, dateFavorited: favObject.dateFavorited, favorited: favObject.favorited, language: favObject.language, titles: favObject.titles, artObjectDescription: favObject.artObjectDescription, objectTypes: favObject.objectTypes, objectCollection: favObject.objectCollection, plaqueDescriptionEnglish: favObject.plaqueDescriptionEnglish, principalMaker: favObject.principalMaker, materials: favObject.materials)
//        do {
//            try db.collection("museumExperience").document("favMuseumItems").setData(from: favMuseum)
//        } catch {
//            print("error saving to favorites\(error)")
//        }
//
//
//    }
//
//    func readMus() {
//        let db = Firestore.firestore()
//
//        db.collection("museumExperience").getDocuments { (snapshot, error) in
//            if let error = error {
//                print(error)
//            } else if let snapshot = snapshot {
//               let museumExperience = snapshot.documents.compactMap {
//                return try? $0.data(as: ArtObject.self)
//                }
//            }
//        }
//    }

