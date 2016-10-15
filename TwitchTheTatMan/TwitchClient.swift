//
//  TwitchClient.swift
//  TwitchTheTatMan
//
//  Created by Jim Campagno on 10/13/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

struct Twitch {
    private static let baseURL: String = "https://api.twitch.tv/kraken"
    
    func getRequest(_ handler: @escaping () -> Void) {
        guard let url = URL(string: Twitch.baseURL) else { return }
        print("Able to make URL")
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/vnd.twitchtv.v3+json", forHTTPHeaderField: "Accept")
        request.addValue(R.clientID, forHTTPHeaderField: "Client-ID")

        let sessionConfig = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfig)
        
        session.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                print(response)
                print(error)
                guard let data = data else { return }
                guard let json = try? JSONSerialization.data(withJSONObject: data, options: JSONSerialization.WritingOptions.prettyPrinted) else { return }
                
                print(json)
                
                print("WE HAVE DATA!\n")
                print(data)
                handler()
            }
        }.resume()
    }
}

