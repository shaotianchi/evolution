//
//  Connection.swift
//  evolution
//
//  Created by Shao Tianchi on 2020/1/16.
//  Copyright © 2020 Shao Tianchi. All rights reserved.
//

import Foundation

protocol Connection {
    var statusHandler: ((GameStatus) -> ())? { get set }
    mutating func join(_ id: String, nickname: String)
    func status(_ state: PlayerState, status: GameStatus)
    mutating func subscribeStatus(handler: @escaping (GameStatus) -> ())
}

private struct RoboConnection: Connection {
    func subscribeStatus(handler: @escaping (GameStatus) -> ()) {
        
    }
    
    var statusHandler: ((GameStatus) -> ())?
    
    func join(_ id: String, nickname: String) {
    }
    
    func status(_ state: PlayerState, status: GameStatus) {
        
    }
}

class LocalConnection: Connection {
    
    var statusHandler: ((GameStatus) -> ())?
    lazy var localGame = Game(count: 2)
    private let roboConnection = RoboConnection()
    
    func join(_ id: String = "local-game", nickname: String) {
        _ = localGame.join(id: nickname, nickname: nickname, connection: self)
        _ = localGame.join(id: "com.rainbow.robo", nickname: "机器人", connection: roboConnection)
    }
    
    
    func status(_ state: PlayerState, status: GameStatus) {
        statusHandler?(status)
    }
    
    func subscribeStatus(handler: @escaping (GameStatus) -> ()) {
        statusHandler = handler
    }
}

struct BTConnection {
    func status(_ state: PlayerState, status: [Player]) {
        
    }
    
    func join(_ id: String = "bt", nickname: String) {
        
    }
}
