//
//  ViewController.swift
//  TwitchTheTatMan
//
//  Created by Jim Campagno on 10/13/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var twitch: Twitch = Twitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Example of Getting Top Games
        twitch.get(request: .topGames) { _ in }
        
        
        // Example of Getting Features Games
        twitch.get(request: .featuredGames) { _ in }
        
        // Example of Channel Search
        let q = ValidTwitchSearch("TimTheTatMan")
        guard let query = q else { return }
        twitch.get(request: .searchChannels(query: query)) { _ in }
    }
    
}
