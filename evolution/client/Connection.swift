//
//  Connection.swift
//  evolution
//
//  Created by Shao Tianchi on 2020/1/16.
//  Copyright © 2020 Shao Tianchi. All rights reserved.
//

import Foundation

protocol Connection {
    mutating func join(_ id: String, nickname: String)
    func status(_ state: PlayerState, status: [Player])
}

private struct RoboConnection: Connection {
    func join(_ id: String, nickname: String) {
    }
    
    func status(_ state: PlayerState, status: [Player]) {
        
    }
}

struct LocalConnection: Connection {
    lazy var localGame = Game(count: 2)
    private let roboConnection = RoboConnection()
    
    mutating func join(_ id: String = "local-game", nickname: String) {
        _ = localGame.join(id: nickname, nickname: nickname, connection: self)
        _ = localGame.join(id: "com.rainbow.robo", nickname: "机器人", connection: roboConnection)
    }
    
    
    func status(_ state: PlayerState, status: [Player]) {
        print(state, status)
    }
}

struct BTConnection {
    func status(_ state: PlayerState, status: [Player]) {
        
    }
    
    func join(_ id: String = "bt", nickname: String) {
        
    }
}
