//
//  ApiDemo.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 3/4/22.
//

import SwiftUI

struct ApiDemo: View {
    struct Response: Codable {
        var results: [Result]
    }

    struct Result: Codable {
        var trackId: Int
        var trackName: String
        var collectionName: String
    }
    
    @State private var results = [Result]()

    var body: some View {
        List(results, id: \.trackId) { item in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                Text(item.collectionName)
            }
        }.task {
            await loadData()
        }
    }
    func loadData() async {
        guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("Invalid URL")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                results = decodedResponse.results
            }
            // more code to come
        } catch {
            print("Invalid data")
        }    }
}

struct ApiDemo_Previews: PreviewProvider {
    static var previews: some View {
        ApiDemo()
    }
}
