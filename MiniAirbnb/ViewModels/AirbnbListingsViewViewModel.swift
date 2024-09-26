//
//  AirbnbListingsViewViewModel.swift
//  MiniAirbnb
//
//  Created by Tushig Battulga on 9/26/24.
//

import Foundation

final class AirbnbListingsViewViewModel: ObservableObject {
    private let service = APIService()
    
    @Published var listings: [AirbnbListing] = []
    
    public func fetchListings() {
        service.getListings { [weak self] result in
            switch result
            {
            case .success(let models):
                self?.listings = models
            case .failure(let failure):
                break
            }
        }
    }
}
