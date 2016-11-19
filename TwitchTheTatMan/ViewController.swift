//
//  ViewController.swift
//  TwitchTheTatMan
//
//  Created by Jim Campagno on 10/13/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    var twitch: Twitch = Twitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Example of Getting Top Games
        //        twitch.get(request: .topGames) { _ in }
        
        //        twitch.get(request: .searchStreams(query: ValidTwitchSearch("Tim")!)) { _ in }
        
//        twitch.get(request: .searchChannels(query: ValidTwitchSearch("franplayshalo")!)) { _ in }
        
        // Example of Getting Features Games
        //        twitch.get(request: .featuredGames) { _ in }
        
        // Example of Channel Search
        //        let q = ValidTwitchSearch("TimTheTatMan")
        //        guard let query = q else { return }
        //        twitch.get(request: .searchChannels(query: query)) { _ in }
    }
    
    @IBAction func play(_ sender: UIButton) {
        
        guard let url = URL(string: "http://player.twitch.tv/channel=franplayshalo") else {
            print("Bad URL")
            return
        }
        
        //        https://www.twitch.tv/lauren07
        
        
        // Create an AVPlayer, passing it the HTTP Live Streaming URL.
        let player = AVPlayer(url: url)
        
        // Create a new AVPlayerViewController and pass it a reference to the player.
        let controller = AVPlayerViewController()
        controller.player = player
        
        // Modally present the player and call the player's play() method when complete.
        present(controller, animated: true) {
            player.play()
        }
    }
    
    
}
