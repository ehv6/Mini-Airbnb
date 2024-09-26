//
//  AirbnbListing.swift
//  MiniAirbnb
//
//  Created by Tushig Battulga on 9/26/24.
//

import Foundation

struct AirbnbListing: Codable {
    
    let id: String
    let listing_url: String
    let name: String
    let summary: String
    let space: String
    let description: String
    let house_rules: String
    let thumbnail_url: String
    let medium_url: String
    let xl_picture_url: String
    let neighbourhood: String
    let amenities: [String]
    let price: Int

    // Host details
    let host_name: String
    let host_since: String
    let host_thumbnail_url: String
    
}





// 