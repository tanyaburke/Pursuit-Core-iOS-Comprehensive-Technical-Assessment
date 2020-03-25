//
//  EverythingIsPeachyTests.swift
//  EverythingIsPeachyTests
//
//  Created by Tanya Burke on 3/16/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//
import XCTest
@testable import EverythingIsPeachy

class EverythingIsPeachyTests: XCTestCase {
    
    
    func testMuseumStuff(){
        
        
        let jsonData = """
    {
    "elapsedMilliseconds": 0,
    "count": 3508,
    "countFacets": {
        "hasimage": 2826,
        "ondisplay": 13
    },
    "artObjects": [
        {
            "links": {
                "self": "http://www.rijksmuseum.nl/api/nl/collection/SK-C-216",
                "web": "http://www.rijksmuseum.nl/nl/collectie/SK-C-216"
            },
            "id": "nl-SK-C-216",
            "objectNumber": "SK-C-216",
            "title": "Het Joodse Bruidje",
            "hasImage": true,
            "principalOrFirstMaker": "Rembrandt van Rijn",
            "longTitle": "Het Joodse Bruidje, Rembrandt van Rijn, ca. 1665 - ca. 1669",
            "showImage": true,
            "permitDownload": true,
            "webImage": {
                "guid": "2fe159d5-619a-46d3-b3d2-9412e6f6bdd8",
                "offsetPercentageX": 0,
                "offsetPercentageY": 0,
                "width": 2500,
                "height": 1817,
                "url": "https://lh3.googleusercontent.com/mAyAjvYjIeAIlByhJx1Huctgeb58y7519XYP38oL1FXarhVlcXW7kxuwayOCFdnwtOp6B6F0HJmmws-Ceo5b_pNSSQs=s0"
            },
            "headerImage": {
                "guid": "10911bfe-4e23-4c3a-95f7-515609f4d711",
                "offsetPercentageX": 0,
                "offsetPercentageY": 0,
                "width": 1925,
                "height": 461,
                "url": "https://lh3.googleusercontent.com/0fTHP4xUsJZbQjzIHYtgHr1gRWBXjm9udaZT4ah35J_LyNzga-SyI0h61klse9sJqn53eUfuVIWZvP8IhW0jN4v91SM=s0"
            },
            "productionPlaces": []
        },
        {
            "links": {
                "self": "http://www.rijksmuseum.nl/api/nl/collection/SK-C-5",
                "web": "http://www.rijksmuseum.nl/nl/collectie/SK-C-5"
            },
            "id": "nl-SK-C-5",
            "objectNumber": "SK-C-5",
            "title": "Nachtwacht, Schutters van wijk II onder leiding van kapitein Frans Banninck Cocq",
            "hasImage": true,
            "principalOrFirstMaker": "Rembrandt van Rijn",
            "longTitle": "Nachtwacht, Schutters van wijk II onder leiding van kapitein Frans Banninck Cocq, Rembrandt van Rijn, 1642",
            "showImage": true,
            "permitDownload": true,
            "webImage": {
                "guid": "aa08df9c-0af9-4195-b31b-f578fbe0a4c9",
                "offsetPercentageX": 0,
                "offsetPercentageY": 1,
                "width": 2500,
                "height": 2034,
                "url": "https://lh3.googleusercontent.com/J-mxAE7CPu-DXIOx4QKBtb0GC4ud37da1QK7CzbTIDswmvZHXhLm4Tv2-1H3iBXJWAW_bHm7dMl3j5wv_XiWAg55VOM=s0"
            },
            "headerImage": {
                "guid": "29a2a516-f1d2-4713-9cbd-7a4458026057",
                "offsetPercentageX": 0,
                "offsetPercentageY": 0,
                "width": 1920,
                "height": 460,
                "url": "https://lh3.googleusercontent.com/O7ES8hCeygPDvHSob5Yl4bPIRGA58EoCM-ouQYN6CYBw5jlELVqk2tLkHF5C45JJj-5QBqF6cA6zUfS66PUhQamHAw=s0"
            },
            "productionPlaces": [
                "Amsterdam"
            ]
        },
        {
            "links": {
                "self": "http://www.rijksmuseum.nl/api/nl/collection/SK-C-597",
                "web": "http://www.rijksmuseum.nl/nl/collectie/SK-C-597"
            },
            "id": "nl-SK-C-597",
            "objectNumber": "SK-C-597",
            "title": "Portret van een vrouw, mogelijk Maria Trip",
            "hasImage": true,
            "principalOrFirstMaker": "Rembrandt van Rijn",
            "longTitle": "Portret van een vrouw, mogelijk Maria Trip, Rembrandt van Rijn, 1639",
            "showImage": true,
            "permitDownload": true,
            "webImage": {
                "guid": "165d03bb-95e8-4447-a911-865f1bd201d6",
                "offsetPercentageX": 0,
                "offsetPercentageY": 0,
                "width": 2031,
                "height": 2676,
                "url": "https://lh3.googleusercontent.com/AyiKhdEWJ7XmtPXQbRg_kWqKn6mCV07bsuUB01hJHjVVP-ZQFmzjTWt7JIWiQFZbb9l5tKFhVOspmco4lMwqwWImfgg=s0"
            },
            "headerImage": {
                "guid": "f0270e59-baca-4429-ba00-d6c37b9ad00f",
                "offsetPercentageX": 0,
                "offsetPercentageY": 0,
                "width": 1920,
                "height": 460,
                "url": "https://lh3.googleusercontent.com/MonorlaCKkTjeFrTBQyCb7kfmq8K--aWrThge7MsTItJxO_cw-8WbwgmTm0jTt-qfaFfnwa1qNEnsGYVHMPmCGmb0Pje=s0"
            },
            "productionPlaces": []
        },
        {
            "links": {
                "self": "http://www.rijksmuseum.nl/api/nl/collection/SK-A-4050",
                "web": "http://www.rijksmuseum.nl/nl/collectie/SK-A-4050"
            },
            "id": "nl-SK-A-4050",
            "objectNumber": "SK-A-4050",
            "title": "Zelfportret als de apostel Paulus",
            "hasImage": true,
            "principalOrFirstMaker": "Rembrandt van Rijn",
            "longTitle": "Zelfportret als de apostel Paulus, Rembrandt van Rijn, 1661",
            "showImage": true,
            "permitDownload": true,
            "webImage": {
                "guid": "58f00619-2e35-4d7d-a46d-0dcc6618f4ec",
                "offsetPercentageX": 0,
                "offsetPercentageY": 0,
                "width": 2287,
                "height": 2724,
                "url": "https://lh3.googleusercontent.com/NrCcfeY0r2F3M2hIQe5SLDRofR2tVzeOH18VjflOYGj88v4clb4v2H_VgCZR4nJhYsxxH9ATzfkL2tRqOWEK5-gPVEE=s0"
            },
            "headerImage": {
                "guid": "aba7d9da-5d4b-4389-8347-c3de63c33d98",
                "offsetPercentageX": 0,
                "offsetPercentageY": 0,
                "width": 2276,
                "height": 544,
                "url": "https://lh3.googleusercontent.com/koQbNAoqV857feer4wJRVF-lbFzyNdvSsjgnXTTF3P3Dmgm2s_7noCVyqsxr1466YiIccueR0DpaU9-wPchhM0bIiQ=s0"
            },
            "productionPlaces": []
        }
    ]
    }
""".data(using: .utf8)!
        
        
        let expectedTitle = "Portret van een vrouw, mogelijk Maria Trip"
        
        // act
        do {
            let museumStuff = try JSONDecoder().decode(Empty.self, from: jsonData)
            // assert
            let supTitle = museumStuff.artObjects[2].title
            XCTAssertEqual(expectedTitle, supTitle)
        } catch {
            XCTFail("decoding error: \(error)")
        }
    }
    
    func testMuseumFav(){
let jsonData = """
                {
            "elapsedMilliseconds": 113,
            "artObject": {
            "links": {
            "search": "http://www.rijksmuseum.nl/api/nl/collection"
                },
            "id": "en-SK-C-5",
            "priref": "5216",
            "objectNumber": "SK-C-5",
            "language": "en",
            "title": "Night Watch, Militia Company of District II under the Command of Captain Frans Banninck Cocq",
            "copyrightHolder": null,
            "webImage": {
            "guid": "aa08df9c-0af9-4195-b31b-f578fbe0a4c9",
            "offsetPercentageX": 50,
            "offsetPercentageY": 100,
            "width": 2500,
            "height": 2034,
            "url": "https://lh3.googleusercontent.com/J-mxAE7CPu-DXIOx4QKBtb0GC4ud37da1QK7CzbTIDswmvZHXhLm4Tv2-1H3iBXJWAW_bHm7dMl3j5wv_XiWAg55VOM=s0"
        },
        "colors": [
            {
                "percentage": 81,
                "hex": "#261808"
            },
            {
                "percentage": 9,
                "hex": " #5E3C14"
            },
            {
                "percentage": 3,
                "hex": " #9C8238"
            },
            {
                "percentage": 2,
                "hex": " #885617"
            },
            {
                "percentage": 1,
                "hex": " #AF9F6B"
            },
            {
                "percentage": 0,
                "hex": " #6C6238"
            },
            {
                "percentage": 0,
                "hex": " #D7CB9E"
            }
        ],
        "colorsWithNormalization": [
            {
                "originalHex": "#261808",
                "normalizedHex": "#000000"
            },
            {
                "originalHex": " #5E3C14",
                "normalizedHex": "#B35A1F"
            },
            {
                "originalHex": " #9C8238",
                "normalizedHex": "#E09714"
            },
            {
                "originalHex": " #885617",
                "normalizedHex": "#B35A1F"
            },
            {
                "originalHex": " #AF9F6B",
                "normalizedHex": "#E0CC91"
            },
            {
                "originalHex": " #6C6238",
                "normalizedHex": "#367614"
            },
            {
                "originalHex": " #D7CB9E",
                "normalizedHex": "#E0CC91"
            }
        ],
        "normalizedColors": [
            {
                "percentage": 81,
                "hex": "#000000"
            },
            {
                "percentage": 12,
                "hex": " #8B4513"
            },
            {
                "percentage": 3,
                "hex": " #B8860B"
            },
            {
                "percentage": 1,
                "hex": " #BDB76B"
            },
            {
                "percentage": 0,
                "hex": " #556B2F"
            },
            {
                "percentage": 0,
                "hex": " #F5DEB3"
            }
        ],
        "normalized32Colors": [
            {
                "percentage": 81,
                "hex": "#000000"
            },
            {
                "percentage": 12,
                "hex": " #B35A1F"
            },
            {
                "percentage": 3,
                "hex": " #E09714"
            },
            {
                "percentage": 2,
                "hex": " #E0CC91"
            },
            {
                "percentage": 0,
                "hex": " #367614"
            }
        ],
        "titles": [
            "Officers and other civic guardsmen of District II in Amsterdam, under the command of Captain Frans Banninck Cocq and Lieutenant Willem van Ruytenburch, known as ‘The Night Watch’",
            "The company of Captain Frans Banninck Cocq and Lieutenant Willem van Ruytenburch, known as 'The nightwatch'"
        ],
        "description": "Officieren en andere schutters van wijk II in Amsterdam onder leiding van kapitein Frans Banninck Cocq en luitenant Willem van Ruytenburch, sinds het einde van de 18de eeuw bekend als ‘De Nachtwacht’. Schutters van de Kloveniersdoelen uit een poort naar buiten tredend. Op een schild aangebracht naast de poort staan de namen van de afgebeelde personen: Frans Banning Cocq, heer van purmerlant en Ilpendam, Capiteijn Willem van Ruijtenburch van Vlaerdingen, heer van Vlaerdingen, Lu[ij]tenant, Jan Visscher Cornelisen Vaendrich, Rombout Kemp Sergeant, Reijnier Engelen Sergeant, Barent Harmansen, Jan Adriaensen Keyser, Elbert Willemsen, Jan Clasen Leydeckers, Jan Ockersen, Jan Pietersen bronchorst, Harman Iacobsen wormskerck, Jacob Dircksen de Roy, Jan vander heede, Walich Schellingwou, Jan brugman, Claes van Cruysbergen, Paulus Schoonhoven. De schutters zijn gewapend met onder anderen pieken, musketten en hellebaarden. Rechts de tamboer met een grote trommel. Tussen de soldaten links staat een meisje met een dode kip om haar middel, rechts een blaffende hond. Linksboven de vaandrig met de uitgestoken vaandel.",
        "labelText": null,
        "objectTypes": [
            "painting"
        ],
        "objectCollection": [
            "paintings"
        ],
        "makers": [],
        "principalMakers": [
            {
                "name": "Rembrandt van Rijn",
                "unFixedName": null,
                "placeOfBirth": "Leiden",
                "dateOfBirth": "1606-07-15",
                "dateOfBirthPrecision": null,
                "dateOfDeath": "1669-10-08",
                "dateOfDeathPrecision": null,
                "placeOfDeath": "Amsterdam",
                "occupation": [
                    "print maker",
                    "draughtsman",
                    "painter"
                ],
                "roles": [
                    "painter"
                ],
                "nationality": "Noord-Nederlands",
                "biography": null,
                "productionPlaces": [
                    "Amsterdam"
                ],
                "qualification": null
            }
        ],
        "plaqueDescriptionDutch": "Rembrandts beroemdste en grootste doek werd gemaakt voor de Kloveniersdoelen. Dit was een van de verenigingsgebouwen van de Amsterdamse schutterij, de burgerwacht van de stad. \r\nRembrandt was de eerste die op een groepsportret de figuren in actie weergaf. De kapitein, in het zwart, geeft zijn luitenant opdracht dat de compagnie moet gaan marcheren. De schutters stellen zich op. Met behulp van licht vestigde Rembrandt de aandacht op belangrijke details, zoals het handgebaar van de kapitein en het kleine meisje op de achtergrond. Zij is de mascotte van de schutters.",
        "plaqueDescriptionEnglish": "Rembrandt’s largest, most famous canvas was made for the Arquebusiers guild hall. This was one of several halls of Amsterdam’s civic guard, the city’s militia and police. \r\nRembrandt was the first to paint figures in a group portrait actually doing something. The captain, dressed in black, is telling his lieutenant to start the company marching. The guardsmen are getting into formation. Rembrandt used the light to focus on particular details, like the captain’s gesturing hand and the young girl in the foreground. She was the company mascot.\r\n",
        "principalMaker": "Rembrandt van Rijn",
        "artistRole": null,
        "associations": [],
        "acquisition": {
            "method": "loan",
            "date": "1808-01-01T00:00:00",
            "creditLine": "On loan from the City of Amsterdam"
        },
        "exhibitions": [],
        "materials": [
            "canvas",
            "oil paint (paint)"
        ],
        "techniques": [],
        "productionPlaces": [
            "Amsterdam"
        ],
        "dating": {
            "presentingDate": "1642",
            "sortingDate": 1642,
            "period": 17,
            "yearEarly": 1642,
            "yearLate": 1642
        },
        "classification": {
            "iconClassIdentifier": [
                "45(+26)",
                "45C1",
                "48C7341",
                "31D11222",
                "45D12",
                "34B11"
            ],
            "iconClassDescription": [
                "warfare; military affairs (+ citizen soldiery, civil guard, citizen militia)",
                "weapons",
                "drum (musical instrument)",
                "girl (child between toddler and youth)",
                "(military) standard-bearer",
                "dog"
            ],
            "motifs": [],
            "events": [],
            "periods": [],
            "places": [
                "Amsterdam"
            ],
            "people": [
                "Banninck Cocq, Frans",
                "Ruytenburch, Willem van",
                "Visscher Cornelisen, Jan",
                "Kemp, Rombout",
                "Engelen, Reijnier Janszn",
                "Bolhamer, Barent Harmansen",
                "Keijser, Jan Adriaensen",
                "Willemsen, Elbert",
                "Leijdeckers, Jan Claesen",
                "Ockersen, Jan",
                "Bronchorst, Jan Pietersen",
                "Wormskerck, Harman Jacobsen",
                "Roy, Jacob Dircksen de",
                "Heede, Jan van der"
            ],
            "objectNumbers": [
                "SK-C-5"
            ]
        },
        "hasImage": true,
        "historicalPersons": [
            "Banninck Cocq, Frans",
            "Ruytenburch, Willem van",
            "Visscher Cornelisen, Jan",
            "Kemp, Rombout",
            "Engelen, Reijnier Janszn",
            "Bolhamer, Barent Harmansen",
            "Keijser, Jan Adriaensen",
            "Willemsen, Elbert",
            "Leijdeckers, Jan Claesen",
            "Ockersen, Jan",
            "Bronchorst, Jan Pietersen",
            "Wormskerck, Harman Jacobsen",
            "Roy, Jacob Dircksen de",
            "Heede, Jan van der"
        ],
        "inscriptions": [],
        "documentation": [
            "The Rembrandt Database,  Object information, Rembrandt,  Civic guardsmen of Amsterdam under command of Banninck Cocq,  dated 1642, Rijksmuseum, Amsterdam, inv. no. SK-C-5, http://www.rembrandtdatabase.org/Rembrandt/painting/3063/civic-guardsmen-of-amsterdam-under-command-of-banninck-cocq, accessed 2016 February 01",
            "Inzoomer object op zaal, 2013 (Nederlands/English).",
            "A. Jensen Adams, Public Faces and Private Identities in Seventeenth-Century Holland, Portraiture and the Production of Community, New York 2009, p. 211-217, fig. 60.",
            "M. Rayssac, 'l'Exode des Musées, Histoire des oeuvres d'art sous l'Occupation', Parijs 2007.",
            "K.M. Groen, 'Earth Matters, The origin of the material used for the preparation of the Nightwatch and many other canvases in Rembrandt's workshop after 1640', Art Matters, volume 3, p. 138.",
            "E. Runia. A. van Suchtelen, Rembrandt, Den Haag 2006, p. 14.",
            "Y. van Veelen, 'Work in progress. De strijd om de Nachtwacht', Kunstbeeld nr. 12/1 (dec. 2004/jan. 2005), p. 44-47.",
            "'Omtrents Rembrandts Nachtwacht', Kunstkrant Rijksmuseum Amsterdam nr. 1 (1998), p. 14-20.",
            "H. van Os, in: Bulletin van het Rijksmuseum nr. 4 (1996), p. 309-320 + afb.",
            "J. Boomgaard, 'De Verloren Zoon. Rembrandt en de Nederlandse Kunstgeschiedenisbeschrijving', Kunstreeks (1995).",
            "P. Taylor, 'Darkness at Noon. Rembrandts Nachtwacht', Kunstschrift 6 (1994), p. 22-27 + afb.",
            "Fieke Tissink, 'Hoofdstuk uit het Rijksmuseum', Rijksmuseum Kunstkrant 19 (1993) nr. 3, p. 14-18.",
            "O. Pacht, 'Rembrandt', Munchen 1991, p. 19-30 + ill.",
            "A.K. Wheelock, 'The Age of Rembrandt', Studies in seventeenth Century Dutch Painting (The Pennsylvania State University, 1988), p. 215, 223 (afb.).",
            "J.B. Bedaux, 'Een achttiende eeuwse kunsttheoretische discussie', Kunstlicht 15 (1985), p. 25-28.",
            "C. Grimm, 'Handschrift, schildertechniek en beeldstructuur. Bijdrage tot het onderzoek naar toeschrijving, I: de helmen van Rembrandt', Tableau (1982/83), p. 246-248, afb. 5.",
            "E. van de Wetering, 'Ontrouw aan Rembrandt', Kunstschrift (Openbaar Kunstbezit) (1982), p. 166-167, 171, afb. 24-26.",
            "K. Clark, 'What is a masterpiece?', Portfolio. The Magazine of the Visual Arts, 2 (1980), p. 51 + afb.",
            "H. Günther, 'Damals oder heute unverstanden. Zum Problem von Rembrandts Nachtwache', Welkunst 50 (1980), p. 1848-1850 + afb.",
            "U. Schumacher, 'Gruppenporträt und Genrebild. Zur Deutung der Photographie fur die franzosische Malerei des 19. Jahrhunderts, Giessener Beiträge zur Kunstgeschichte 4 (1979), p. 29, afb. 11.",
            "M.M. Toth-Ubbens, 'De barbier van Amsterdam. Aantekeningen over de relaties tussen het Waaggebouw en de Schouwburg in de zeventiende eeuw', Antiek 10 (1975), p. 388, afb. 12.",
            "H. Gerson, 'De Nachtwacht', Openbaar Kunstbezit, 10e jaargang, januari (1966).",
            "Chr. White, 'Rembrandt', Den Haag 1964, p. 65, 66 + afb.",
            "A.J. Moes-Veth, 'Rembrandt's Claudius Civilis en de Nachtwacht van terzijde beschouwd, Oud Holland LXXV (1960), p. 143.",
            "A.J. Moes-Veth, 'De Nachtwacht en haar oude copieen', Oud Holland LXII (1947), p. 188.",
            "J.A. Overhoff, 'De Nachtwacht op zwerftocht' (het schilderij ten tijde van WO II), http://www.cacciucco.nl/artikelen/kunst/de_nachtwacht_op_zwerftocht.html [2016]",
            "J.A. Overhoff, 'THE NIGHT WATCH ODYSSEY' (the painting during WWII) , http://www.cacciucco.nl/english/the_night_watch_odyssey.html [2017]"
        ],
        "catRefRPK": [],
        "principalOrFirstMaker": "Rembrandt van Rijn",
        "dimensions": [
            {
                "unit": "cm",
                "type": "height",
                "part": null,
                "value": "379.5"
            },
            {
                "unit": "cm",
                "type": "width",
                "part": null,
                "value": "453.5"
            },
            {
                "unit": "kg",
                "type": "weight",
                "part": null,
                "value": "337"
            },
            {
                "unit": "kg",
                "type": "weight",
                "part": null,
                "value": "170"
            }
        ],
        "physicalProperties": [],
        "physicalMedium": "oil on canvas",
        "longTitle": "Night Watch, Militia Company of District II under the Command of Captain Frans Banninck Cocq, Rembrandt van Rijn, 1642",
        "subTitle": "h 379.5cm × w 453.5cm × w 337kg",
        "scLabelLine": "Rembrandt van Rijn (1606-1669), oil on canvas, 1642",
        "label": {
            "title": "Night Watch, Militia Company of District II under the Command of Captain Frans Banninck Cocq",
            "makerLine": "Rembrandt van Rijn (1606-1669), oil on canvas, 1642",
            "description": "Rembrandt’s largest, most famous canvas was made for the Arquebusiers guild hall. This was one of several halls of Amsterdam’s civic guard, the city’s militia and police. Rembrandt was the first to paint figures in a group portrait actually doing something. The captain, dressed in black, is telling his lieutenant to start the company marching. The guardsmen are getting into formation. Rembrandt used the light to focus on particular details, like the captain’s gesturing hand and the young girl in the foreground. She was the company mascot. The nickname Night Watch originated much later, when the painting was thought to represent a nocturnal scene.",
            "notes": "Multimediatour, 500",
            "date": "2019-07-01"
        },
        "showImage": true,
        "location": "HG-2.31"
    },
    "artObjectPage": {
        "id": "en-SK-C-5",
        "similarPages": [],
        "lang": "en",
        "objectNumber": "SK-C-5",
        "tags": [],
        "plaqueDescription": "Rembrandt’s largest, most famous canvas was made for the Arquebusiers guild hall. This was one of several halls of Amsterdam’s civic guard, the city’s militia and police. \r\nRembrandt was the first to paint figures in a group portrait actually doing something. The captain, dressed in black, is telling his lieutenant to start the company marching. The guardsmen are getting into formation. Rembrandt used the light to focus on particular details, like the captain’s gesturing hand and the young girl in the foreground. She was the company mascot.\r\n",
        "audioFile1": null,
        "audioFileLabel1": null,
        "audioFileLabel2": null,
        "createdOn": "2012-08-09T14:47:53.679885+00:00",
        "updatedOn": "2012-09-18T14:05:59.8527283+00:00",
        "adlibOverrides": {
            "titel": null,
            "maker": null,
            "etiketText": null
                    }
                }
            }
""".data(using: .utf8)!
        
        
    }
}

