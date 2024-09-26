//
//  AirbnbListingsView.swift
//  MiniAirbnb
//
//  Created by Tushig Battulga on 9/26/24.
//

import SwiftUI

struct AirbnbListingsView: View {
    @StateObject var viewModel = AirbnbListingsViewViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.listings) { listing in
                NavigationLink(destination: Text("Hello")) {
                    AirbnbListingCardView(model: listing)
                }
            }
            .onAppear {
                viewModel.fetchListings()
            }
        }
    }
}
