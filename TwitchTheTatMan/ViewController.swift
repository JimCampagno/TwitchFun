//
//  ViewController.swift
//  TwitchTheTatMan
//
//  Created by Jim Campagno on 10/13/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let twitch: Twitch = Twitch()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View did load.")
        twitch.getRequest {
            print("Wuddup")
        }
    }

 


}

