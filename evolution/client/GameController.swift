//
//  Controller.swift
//  evolution
//
//  Created by Shao Tianchi on 2020/1/16.
//  Copyright © 2020 Shao Tianchi. All rights reserved.
//

import Foundation

struct GameController {
    private(set) lazy var localConnection = LocalConnection()
    
    private(set) lazy var btConnection = BTConnection()
    
    mutating func createLocalGame(nickname: String) {
        localConnection.join(nickname: nickname)
    }
    
    mutating func joinBTGame(nickname: String) {
        btConnection.join(nickname: nickname)
    }
    
    // 创建蓝牙局域网游戏
    func createBTGame() {
        
    }
    
    // 创建线上游戏
    func createOnlineGame() {
        
    }
}
