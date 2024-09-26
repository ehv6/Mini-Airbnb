//
//  APIService.swift
//  MiniAirbnb
//
//  Created by Tushig Battulga on 9/26/24.
//

import Foundation

final class APIService{
    init(){}
    
    // https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/air-bnb-listings/records?limit=100&lang=en&timezone=America%2FNew_York&refine=city%3A%22New-york-city%22&refine=room_type%3A%22Entire%20home%2Fapt%22
    
    struct Constants {
        static let apiURL = URL(string: "https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/air-bnb-listings/records?limit=100&lang=en&timezone=America%2FNew_York&refine=city%3A%22New-york-city%22&refine=room_type%3A%22Entire%20home%2Fapt%22")
    }
    
    public func getListings(completion: @escaping (Result<[AirbnbListing], Error>) -> Void) {
        
        guard let url = Constants.apiURL else { return }
        
        let request = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data, error == nil else {
                completion (.failure(error ?? URLError.badURL))
                return
            }
            
            do {
                let response = JSONDecoder().decode(AirbnbListingsResponse.self, from: data)
                completion(.success(response.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
