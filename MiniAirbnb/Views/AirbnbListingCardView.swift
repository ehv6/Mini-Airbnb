//
//  AirbnbListingCardView.swift
//  MiniAirbnb
//
//  Created by Tushig Battulga on 9/26/24.
//

import Foundation
import SwiftUI

struct AirbnbListingCardView: View{
    let model: AirbnbListing
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: model.thumbnail_url ?? ""))
            
            Text(model.name ?? "Lisitng")
                .font(.title)
                .bold()
        }
    }
}
