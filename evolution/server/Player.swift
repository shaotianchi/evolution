//
//  Player.swift
//  evolution
//
//  Created by Shao Tianchi on 2020/1/16.
//  Copyright © 2020 Shao Tianchi. All rights reserved.
//

import Foundation

struct Player: Equatable {
    static func == (lhs: Player, rhs: Player) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id: String
    var name: String
    
    var gameStatus: GameStatus = GameStatus()
    var connection: Connection
    
}
