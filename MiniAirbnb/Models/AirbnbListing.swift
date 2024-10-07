//
//  AirbnbListing.swift
//  MiniAirbnb
//
//  Created by Tushig Battulga on 9/26/24.
//

import Foundation

struct AirbnbListing: Codable, Hashable, Identifiable {
    let id: String
    let listing_url: String?
    let name: String?
    let summary: String?
    let space: String?
    let description: String?
    let house_rules: String?
    let thumbnail_url: String?
    let medium_url: String?
    let xl_picture_url: String?
    let neighbourhood: String?
    let amenities: [String]?
    let price: Int?

    // Host details
    let host_name: String?
    let host_since: String?
    let host_thumbnail_url: String?

    enum CodingKeys: String, CodingKey {
        case id
        case listing_url = "column_1"  // Match with actual JSON key
        case name
        case summary
        case space
        case description
        case house_rules
        case thumbnail_url
        case medium_url
        case xl_picture_url
        case neighbourhood
        case amenities
        case price = "column_10" // Matches the price key from JSON
        case host_name
        case host_since
        case host_thumbnail_url
    }
}
