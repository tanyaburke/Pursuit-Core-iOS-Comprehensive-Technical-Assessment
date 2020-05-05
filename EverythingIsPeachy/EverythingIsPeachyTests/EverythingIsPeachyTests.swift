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
            let museumStuff = try JSONDecoder().decode(Museum.self, from: jsonData)
            // assert
            let supTitle = museumStuff.artObjects[2].title
            XCTAssertEqual(expectedTitle, supTitle)
        } catch {
            XCTFail("decoding error: \(error)")
        }
    }
    
    func testTM(){
let jsonData = """
                {
                "_embedded": {
                    "events": [
                        {
                            "name": "Eagles",
                            "type": "event",
                            "id": "vv1AaZAqAGkdPXfSW",
                            "test": false,
                            "url": "https://www.ticketmaster.com/eagles-inglewood-california-09-26-2020/event/09005745E5F94CFD",
                            "locale": "en-us",
                            "images": [
                                {
                                    "ratio": "4_3",
                                    "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_CUSTOM.jpg",
                                    "width": 305,
                                    "height": 225,
                                    "fallback": false
                                },
                                {
                                    "ratio": "16_9",
                                    "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_TABLET_LANDSCAPE_16_9.jpg",
                                    "width": 1024,
                                    "height": 576,
                                    "fallback": false
                                },
                                {
                                    "ratio": "3_2",
                                    "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_RETINA_PORTRAIT_3_2.jpg",
                                    "width": 640,
                                    "height": 427,
                                    "fallback": false
                                },
                                {
                                    "ratio": "3_2",
                                    "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_TABLET_LANDSCAPE_3_2.jpg",
                                    "width": 1024,
                                    "height": 683,
                                    "fallback": false
                                },
                                {
                                    "ratio": "16_9",
                                    "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_TABLET_LANDSCAPE_LARGE_16_9.jpg",
                                    "width": 2048,
                                    "height": 1152,
                                    "fallback": false
                                },
                                {
                                    "ratio": "16_9",
                                    "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_RETINA_PORTRAIT_16_9.jpg",
                                    "width": 640,
                                    "height": 360,
                                    "fallback": false
                                },
                                {
                                    "ratio": "16_9",
                                    "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_RECOMENDATION_16_9.jpg",
                                    "width": 100,
                                    "height": 56,
                                    "fallback": false
                                },
                                {
                                    "ratio": "3_2",
                                    "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_ARTIST_PAGE_3_2.jpg",
                                    "width": 305,
                                    "height": 203,
                                    "fallback": false
                                },
                                {
                                    "ratio": "16_9",
                                    "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_EVENT_DETAIL_PAGE_16_9.jpg",
                                    "width": 205,
                                    "height": 115,
                                    "fallback": false
                                },
                                {
                                    "ratio": "16_9",
                                    "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_RETINA_LANDSCAPE_16_9.jpg",
                                    "width": 1136,
                                    "height": 639,
                                    "fallback": false
                                }
                            ],
                            "sales": {
                                "public": {
                                    "startDateTime": "2019-10-18T17:00:00Z",
                                    "startTBD": false,
                                    "endDateTime": "2020-09-27T03:00:00Z"
                                },
                                "presales": [
                                    {
                                        "startDateTime": "2019-10-17T17:00:00Z",
                                        "endDateTime": "2019-10-18T05:00:00Z",
                                        "name": "Live Nation Mobile App Presale"
                                    },
                                    {
                                        "startDateTime": "2019-10-17T17:00:00Z",
                                        "endDateTime": "2019-10-18T05:00:00Z",
                                        "name": "Live Nation / Venue presale"
                                    },
                                    {
                                        "startDateTime": "2019-10-14T17:00:00Z",
                                        "endDateTime": "2019-10-18T05:00:00Z",
                                        "name": "American Express® Card Member Presale"
                                    },
                                    {
                                        "startDateTime": "2019-10-18T17:00:00Z",
                                        "endDateTime": "2020-04-04T05:00:00Z",
                                        "name": "American Express® Onsale"
                                    },
                                    {
                                        "startDateTime": "2019-10-14T17:00:00Z",
                                        "endDateTime": "2019-10-18T05:00:00Z",
                                        "name": "Official Platinum Presale"
                                    },
                                    {
                                        "startDateTime": "2019-10-18T17:00:00Z",
                                        "endDateTime": "2020-04-19T00:00:00Z",
                                        "name": "Official Platinum Onsale"
                                    }
                                ]
                            },
                            "dates": {
                                "start": {
                                    "localDate": "2020-09-26",
                                    "localTime": "20:00:00",
                                    "dateTime": "2020-09-27T03:00:00Z",
                                    "dateTBD": false,
                                    "dateTBA": false,
                                    "timeTBA": false,
                                    "noSpecificTime": false
                                },
                                "timezone": "America/Los_Angeles",
                                "status": {
                                    "code": "rescheduled"
                                },
                                "spanMultipleDays": false
                            },
                            "classifications": [
                                {
                                    "primary": true,
                                    "segment": {
                                        "id": "KZFzniwnSyZfZ7v7nJ",
                                        "name": "Music"
                                    },
                                    "genre": {
                                        "id": "KnvZfZ7vAeA",
                                        "name": "Rock"
                                    },
                                    "subGenre": {
                                        "id": "KZazBEonSMnZfZ7v6F1",
                                        "name": "Pop"
                                    },
                                    "type": {
                                        "id": "KZAyXgnZfZ7v7nI",
                                        "name": "Undefined"
                                    },
                                    "subType": {
                                        "id": "KZFzBErXgnZfZ7v7lJ",
                                        "name": "Undefined"
                                    },
                                    "family": false
                                }
                            ],
                            "promoter": {
                                "id": "653",
                                "name": "LIVE NATION MUSIC",
                                "description": "LIVE NATION MUSIC / NTL / USA"
                            },
                            "promoters": [
                                {
                                    "id": "653",
                                    "name": "LIVE NATION MUSIC",
                                    "description": "LIVE NATION MUSIC / NTL / USA"
                                }
                            ],
                            "info": "To allow for more Card Members to enjoy the show, American Express has set a two-order limit for this offer. This limit applies across all Cards associated with all of your American Express accounts. Prepaid Cards are not eligible.",
                            "priceRanges": [
                                {
                                    "type": "standard",
                                    "currency": "USD",
                                    "min": 99.0,
                                    "max": 750.0
                                }
                            ],
                            "seatmap": {
                                "staticUrl": "https://maps.ticketmaster.com/maps/geometry/3/event/09005745E5F94CFD/staticImage?type=png&systemId=HOST"
                            },
                            "ticketLimit": {
                                "info": "There is an 8 ticket limit per household."
                            },
                            "_links": {
                                "self": {
                                    "href": "/discovery/v2/events/vv1AaZAqAGkdPXfSW?locale=en-us"
                                },
                                "attractions": [
                                    {
                                        "href": "/discovery/v2/attractions/K8vZ9171ob7?locale=en-us"
                                    }
                                ],
                                "venues": [
                                    {
                                        "href": "/discovery/v2/venues/KovZpZAEkn6A?locale=en-us"
                                    }
                                ]
                            },
                            "_embedded": {
                                "venues": [
                                    {
                                        "name": "The Forum",
                                        "type": "venue",
                                        "id": "KovZpZAEkn6A",
                                        "test": false,
                                        "url": "https://www.ticketmaster.com/the-forum-tickets-inglewood/venue/73750",
                                        "locale": "en-us",
                                        "images": [
                                            {
                                                "ratio": "16_9",
                                                "url": "https://s1.ticketm.net/dbimages/15787v.jpg",
                                                "width": 205,
                                                "height": 115,
                                                "fallback": false
                                            },
                                            {
                                                "ratio": "3_1",
                                                "url": "https://s1.ticketm.net/dam/v/52c/cc82c980-6a5d-4cee-9339-f382c7f5b52c_380251_SOURCE.jpg",
                                                "width": 1500,
                                                "height": 500,
                                                "fallback": false
                                            },
                                            {
                                                "ratio": "3_1",
                                                "url": "https://s1.ticketm.net/dam/v/52c/cc82c980-6a5d-4cee-9339-f382c7f5b52c_380251_SOURCE.jpg",
                                                "width": 1500,
                                                "height": 500,
                                                "fallback": false
                                            }
                                        ],
                                        "postalCode": "90305",
                                        "timezone": "America/Los_Angeles",
                                        "city": {
                                            "name": "Inglewood"
                                        },
                                        "state": {
                                            "name": "California",
                                            "stateCode": "CA"
                                        },
                                        "country": {
                                            "name": "United States Of America",
                                            "countryCode": "US"
                                        },
                                        "address": {
                                            "line1": "3900 W Manchester Blvd."
                                        },
                                        "location": {
                                            "longitude": "-118.341868",
                                            "latitude": "33.9583"
                                        },
                                        "markets": [
                                            {
                                                "name": "Los Angeles",
                                                "id": "27"
                                            }
                                        ],
                                        "dmas": [
                                            {
                                                "id": 223
                                            },
                                            {
                                                "id": 324
                                            },
                                            {
                                                "id": 354
                                            },
                                            {
                                                "id": 383
                                            }
                                        ],
                                        "boxOfficeInfo": {
                                            "openHoursDetail": "Box office Hours: The Forum Box Office is located on the West side (Prairie Avenue side) of the venue. The Box Office is open Monday through Friday from 11:00 am - 7:00 pm, Saturdays & Sundays (on event days only), opens 12 noon",
                                            "acceptedPaymentDetail": "Cash, Visa, Mastercard, Discover, American Express. Photo ID is required for all credit card transactions.",
                                            "willCallDetail": "Location: Box Office Will Call is only open on days of events. Will Call opens two (2) hours prior to the start of the show and closes (1) hour after the start of the show. Will Call tickets can be picked up on the night of the event only. Customers must have the actual credit card used to place the order, photo ID and their confirmation number. Tickets may not be dropped off or left for other guests."
                                        },
                                        "parkingDetail": "Parking fees vary per event. Disabled parking is located on all sides of the main Forum lot. Please have your CA State placard available for the attendants.",
                                        "accessibleSeatingDetail": "Wheelchair and Disabled Seating Policy: Wheelchair and Transfer seating is reserved exclusively for patrons with accessible needs and their companions. Accessible seating is intended for use by an individual with a mobility disability or other disability who requires the accessible features of accessible seating due to a disability, and that individual's companions. The Forum and Madison Square Garden (MSG) reserve the right to investigate potential misuse of accessible seating and to take all appropriate action against individuals who fraudulently obtain tickets for accessible seating. Tickets for accessible seating legitimately purchased for the use by an individual with a disability may be sold or transferred to another individual under the same terms and conditions applicable to other tickets. However, ***In the event such ticket is transferred to a non-disabled individual, The Forum reserves the right to deny entry to the wheelchair seating area or transfer that individual to other available seating*** Purchase Wheelchair and Disabled Seating Tickets for people with accessible needs, subject to availability, may be purchased in several ways: 1) Call Ticketmaster at 800-745-3000 2) Order Online with Ticketmaster (select your event from the list to the left) 3) Visit The Forum Box Office (see box office hours above) 2) Call Forum Disabled Services Department at 888-609-7599 For additional information regarding accessibility at The Forum or to request an interpreted performance or any other accommodations, please call the Forum Disabled Services Department any weekday between 6:30am and 1:30pm PT. Accessible Restrooms Disabled and family restrooms are located on the concourse across from sections 209-210 and 227-228. On the floor, disabled restrooms are located in the hallways adjacent to the North Hospitality, Forum Club, and Chase Lounge. While disabled guests are provided preference at disabled restrooms, any guest may use these restrooms if they require that type of accommodation. Wheelchair Escorts For individuals who have limited mobility, the Forum can provide a wheelchair transport from a guest services location to their seating areas. Upon arrival at the Forum, please ask Guest Services for assistance. Please be aware Forum escort staff is unable to remain with guests for the performance, provide restroom or concessions assistance, nor are they permitted to escort guests into the parking lots, city streets, or surrounding area. If you require a wheelchair for the duration of the show, it is suggested you bring your own wheelchair to the venue. Wheelchair Storage Guests who wish to transfer to a fixed seat from their wheelchair or mobility device, can check their device at any Guest Services location. Claim checks will be issued and guests may pick up their wheelchair until 30 minutes after conclusion of the show.",
                                        "generalInfo": {
                                            "generalRule": "ARRIVE EARLY: Please arrive at least one-hour prior to show time. All bags, including purses, will be inspected prior to entry while all patrons will go through a screening process including the use of metal detectors and pat downs as needed. Please be mindful of traffic conditions and local street closures/construction. For a list of prohibited items, please visit www.thefabulousforum.com. No smoking of any substance and no electronic cigarettes are permitted in the Forum No recording devices are permitted No reentry No outside food or beverage is permitted There are no bag or coat check facilities Alcohol Management For most events at the Forum, alcoholic beverages are available for purchase. Staff is trained in the National Restaurant Association Training program. Alcohol sales will be limited to two alcoholic drinks per customer per transaction. Guests are not permitted to bring alcoholic beverages from outside the Forum and may not leave with alcohol purchased at the Forum. Management reserves the right to refuse the sale of alcohol to any guest. All guests may be required to show ID to purchase alcohol. Please be aware it is the policy of the Forum to require all guests who appear to be under forty (40) years of age or younger to present a valid form of ID with proof of age in order to purchase alcoholic beverages at the Forum. Pursuant to applicable state law, The Forum accepts only ID cards issued by a governmental agency that include a current description and picture of the person presenting it, which reasonably describes the person as to date of birth, weight, height, sex, and colors of eyes/hair. The Forum will not accept an ID that has been altered or is expired. We will also not accept a registration certificate issued under the Federal Selective Service Act.",
                                            "childRule": "Events are all ages (unless noted). Everyone must have a ticket to enter the venue, regardless of age. For age restricted events a valid government issues ID will be required for entry."
                                        },
                                        "upcomingEvents": {
                                            "_total": 33,
                                            "ticketmaster": 33
                                        },
                                        "_links": {
                                            "self": {
                                                "href": "/discovery/v2/venues/KovZpZAEkn6A?locale=en-us"
                                            }
                                        }
                                    }
                                ],
                                "attractions": [
                                    {
                                        "name": "Eagles",
                                        "type": "attraction",
                                        "id": "K8vZ9171ob7",
                                        "test": false,
                                        "url": "https://www.ticketmaster.com/eagles-tickets/artist/734977",
                                        "locale": "en-us",
                                        "externalLinks": {
                                            "twitter": [
                                                {
                                                    "url": "https://twitter.com/TheEaglesBand"
                                                }
                                            ],
                                            "itunes": [
                                                {
                                                    "url": "https://itunes.apple.com/artist/id1053549"
                                                }
                                            ],
                                            "lastfm": [
                                                {
                                                    "url": "https://www.last.fm/music/Eagles"
                                                }
                                            ],
                                            "wiki": [
                                                {
                                                    "url": "https://en.wikipedia.org/wiki/Eagles_(band)"
                                                }
                                            ],
                                            "facebook": [
                                                {
                                                    "url": "https://www.facebook.com/EaglesBand"
                                                }
                                            ],
                                            "musicbrainz": [
                                                {
                                                    "id": "f46bd570-5768-462e-b84c-c7c993bbf47e"
                                                }
                                            ],
                                            "homepage": [
                                                {
                                                    "url": "https://eagles.com/"
                                                }
                                            ]
                                        },
                                        "images": [
                                            {
                                                "ratio": "4_3",
                                                "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_CUSTOM.jpg",
                                                "width": 305,
                                                "height": 225,
                                                "fallback": false
                                            },
                                            {
                                                "ratio": "16_9",
                                                "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_TABLET_LANDSCAPE_16_9.jpg",
                                                "width": 1024,
                                                "height": 576,
                                                "fallback": false
                                            },
                                            {
                                                "ratio": "3_2",
                                                "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_RETINA_PORTRAIT_3_2.jpg",
                                                "width": 640,
                                                "height": 427,
                                                "fallback": false
                                            },
                                            {
                                                "ratio": "3_2",
                                                "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_TABLET_LANDSCAPE_3_2.jpg",
                                                "width": 1024,
                                                "height": 683,
                                                "fallback": false
                                            },
                                            {
                                                "ratio": "16_9",
                                                "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_TABLET_LANDSCAPE_LARGE_16_9.jpg",
                                                "width": 2048,
                                                "height": 1152,
                                                "fallback": false
                                            },
                                            {
                                                "ratio": "16_9",
                                                "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_RETINA_PORTRAIT_16_9.jpg",
                                                "width": 640,
                                                "height": 360,
                                                "fallback": false
                                            },
                                            {
                                                "ratio": "16_9",
                                                "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_RECOMENDATION_16_9.jpg",
                                                "width": 100,
                                                "height": 56,
                                                "fallback": false
                                            },
                                            {
                                                "ratio": "3_2",
                                                "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_ARTIST_PAGE_3_2.jpg",
                                                "width": 305,
                                                "height": 203,
                                                "fallback": false
                                            },
                                            {
                                                "ratio": "16_9",
                                                "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_EVENT_DETAIL_PAGE_16_9.jpg",
                                                "width": 205,
                                                "height": 115,
                                                "fallback": false
                                            },
                                            {
                                                "ratio": "16_9",
                                                "url": "https://s1.ticketm.net/dam/a/c40/e0f4dedd-b435-4b8b-8fd0-e73e47e93c40_851341_RETINA_LANDSCAPE_16_9.jpg",
                                                "width": 1136,
                                                "height": 639,
                                                "fallback": false
                                            }
                                        ],
                                        "classifications": [
                                            {
                                                "primary": true,
                                                "segment": {
                                                    "id": "KZFzniwnSyZfZ7v7nJ",
                                                    "name": "Music"
                                                },
                                                "genre": {
                                                    "id": "KnvZfZ7vAeA",
                                                    "name": "Rock"
                                                },
                                                "subGenre": {
                                                    "id": "KZazBEonSMnZfZ7v6F1",
                                                    "name": "Pop"
                                                },
                                                "type": {
                                                    "id": "KZAyXgnZfZ7v7nI",
                                                    "name": "Undefined"
                                                },
                                                "subType": {
                                                    "id": "KZFzBErXgnZfZ7v7lJ",
                                                    "name": "Undefined"
                                                },
                                                "family": false
                                            }
                                        ],
                                        "upcomingEvents": {
                                            "_total": 15,
                                            "ticketmaster": 15
                                        },
                                        "_links": {
                                            "self": {
                                                "href": "/discovery/v2/attractions/K8vZ9171ob7?locale=en-us"
                                            }
                                        }
                                    }
                                ]
                            }
                        }
]
}
}
""".data(using: .utf8)!
        
        let priceRangeMin = Double(99)
          
          // act
          do {
            let tMItem = try JSONDecoder().decode(Ticket.self, from: jsonData)
            // assert
            let price = tMItem.events[0].priceRanges.first?.min
            XCTAssertEqual(priceRangeMin, price)
          } catch {
            XCTFail("decoding error: \(error)")
          }
        
    }
}

