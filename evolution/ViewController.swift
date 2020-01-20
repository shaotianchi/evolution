//
//  ViewController.swift
//  evolution
//
//  Created by Shao Tianchi on 2020/1/16.
//  Copyright © 2020 Shao Tianchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cardsView: UIView!
    
    var gameController = GameController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        gameController.localConnection.subscribeStatus { (status) in
            print(status.currentPlayer.status.cards.count)
//            status.currentPlayer.status.creatures.map { (creature) in
//
//            }
        }
        
        gameController.createLocalGame(nickname: "rainbow")
    }


}

