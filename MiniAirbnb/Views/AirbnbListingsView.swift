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
            Text("Loading")
        }
        .onAppear {
            viewModel.fetchListings()
        }
    }
}
