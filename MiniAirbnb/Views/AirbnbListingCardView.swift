//
//  AirbnbListingCardView.swift
//  MiniAirbnb
//
//  Created by Tushig Battulga on 9/26/24.
//

import SwiftUI

struct AirbnbListingCardView: View {
    let model: AirbnbListing
    
    var body: some View {
        HStack {
            // Remove thumbnail_url since it's not available in the new API
            VStack(alignment: .leading, spacing: 5) {
                Text(model.name ?? "Listing")
                    .lineLimit(1)
                    .font(.title3)
                    .bold()
                
                // Assuming you might want to display the neighbourhood
                Text("Neighbourhood: \(model.neighbourhood ?? "Unknown Neighbourhood")")
                    .foregroundColor(.secondary)
                    .lineLimit(1)
                    .font(.subheadline)

                // Show the price (column_10)
                if let price = model.price {
                    Text("Price: $\(price)")
                        .foregroundColor(.primary)
                        .font(.subheadline)
                } else {
                    Text("Price: N/A")
                        .foregroundColor(.primary)
                        .font(.subheadline)
                }
                
//                // Optionally show coordinates (latitude, longitude)
//                if let coordinates = model.coordinates {
//                    Text("Location: \(coordinates.lat), \(coordinates.lon)")
//                        .foregroundColor(.secondary)
//                        .lineLimit(1)
//                        .font(.footnote)
//                }
            }
        }
        .padding()
    }
}
