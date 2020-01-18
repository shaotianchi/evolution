//
//  ViewController.swift
//  evolution
//
//  Created by Shao Tianchi on 2020/1/16.
//  Copyright © 2020 Shao Tianchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gameController = GameController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameController.createLocalGame(nickname: "rainbow")
        
    }


}

