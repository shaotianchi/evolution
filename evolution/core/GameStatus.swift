//
//  GameStatus.swift
//  evolution
//
//  Created by Shao Tianchi on 2020/1/20.
//  Copyright © 2020 Shao Tianchi. All rights reserved.
//

import Foundation

struct GameStatus {
    var currentPlayer: Player
    var otherCreatures: [String: [Creature]]
    var foods: Int
    var state: GameState
}
