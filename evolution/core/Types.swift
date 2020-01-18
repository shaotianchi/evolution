//
//  Types.swift
//  evolution
//
//  Created by Shao Tianchi on 2020/1/16.
//  Copyright © 2020 Shao Tianchi. All rights reserved.
//

import Foundation

enum EatType {
    case Herbivorous // 草食
    case Meat        // 肉食
    case Carrion     // 腐食
}

enum LivingSpace {
    case Ground // 陆地
    case Water  // 水生
}

enum GameState {
    case waitJoin
    case card
    case food
    case count
}

enum PlayerState {
    case idle(gs: GameState)
    case acting(gs: GameState)
    case holding(gs: GameState)
}
