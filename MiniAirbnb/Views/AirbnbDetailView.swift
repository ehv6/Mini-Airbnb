import SwiftUI

struct AirbnbDetailView: View {
    let model: AirbnbListing
    
    var body: some View {
        VStack(alignment: .leading) {
            GeometryReader { proxy in
                ScrollView(.vertical) {
                    
                    // Picture
                    AsyncImage(url: URL(string: model.xl_picture_url ?? "")) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: proxy.size.width, height: proxy.size.width)
                    .clipped()
                    
                    // Information about listing
                    Text(model.name ?? "No name available")
                        .font(.title)
                        .bold()
                        .padding()
                    
                    if let price = model.price {
                        Text("Nightly Rate: \(price.formatted(.currency(code: "USD")))")
                            .font(.headline)
                            .bold()
                            .padding()
                    }
                    
                    Text("Description: \(model.description ?? "No description available")")
                        .padding()
                    
                    Text("Summary: \(model.summary ?? "No summary available")")
                        .padding()
                    
                    Text("House Rules: \(model.house_rules ?? "No house rules available")")
                        .padding()
                    
                    Text("Space: \(model.space ?? "No space information available")")
                        .padding()
                    
                    // Information about Host
                    Text("About Your Host")
                        .font(.title2)
                        .bold()
                        .padding()
                    
                    HStack {
                        AsyncImage(url: URL(string: model.host_thumbnail_url ?? "")) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 75, height: 75)
                        .clipShape(Circle())
                        
                        Text(model.host_name ?? "No host name available")
                            .bold()
                    }
                    .padding()
                    
                    Text("Hosting Since: \(model.host_since ?? "No host since information")")
                        .padding()
                }
                .frame(maxWidth: proxy.size.width)
            }
        }
        .navigationTitle(model.name ?? "Listing")
    }
}
