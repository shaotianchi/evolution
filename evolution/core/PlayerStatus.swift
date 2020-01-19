//
//  GameStatus.swift
//  evolution
//
//  Created by Shao Tianchi on 2020/1/16.
//  Copyright © 2020 Shao Tianchi. All rights reserved.
//

import Foundation

struct PlayerStatus {
    var canAttack = false
    var foodCount = 0
    var cards: [Card] = []
    var creatures: [Creature] = []
}
