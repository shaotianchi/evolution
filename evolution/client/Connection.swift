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
    func join(_ id: String, nickname: String)
    func status(_ state: PlayerState, status: GameStatus)
    func subscribeStatus(handler: @escaping (GameStatus) -> ()) -> Connection
}

private class RoboConnection: Connection {
    func subscribeStatus(handler: @escaping (GameStatus) -> ()) -> Connection {
        return self
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
    
    func subscribeStatus(handler: @escaping (GameStatus) -> ()) -> Connection {
        statusHandler = handler
        return self
    }
}

class BTConnection {
    func status(_ state: PlayerState, status: [Player]) {
        
    }
    
    func join(_ id: String = "bt", nickname: String) {
        
    }
}
