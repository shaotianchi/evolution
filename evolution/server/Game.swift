//
//  Game.swift
//  evolution
//
//  Created by Shao Tianchi on 2020/1/16.
//  Copyright © 2020 Shao Tianchi. All rights reserved.
//

import Foundation


struct Game {
    private(set) var id: String
    private(set) var count: UInt
    private var playerList: [Player] = [] {
        didSet {
            if (playerList.count != count) { return }
            state = .card
        }
    }
    private(set) var state = GameState.waitJoin {
        didSet {
            gameStateChange()
        }
    }
    
    public init(count: UInt) {
        self.count = count
        id = "local-game"
    }
    
    mutating func gameStateChange() {
        // change player's gamestatus
        var players = playerList
        switch state {
        case .card:
            players = playerList.map { player -> Player in
                var _player = player
                let count = _player.gameStatus.cards.count + _player.gameStatus.creatures.count
                _player.gameStatus.cards.append(contentsOf: Card.gen(count: count == 0 ? 6 : UInt(count + 2)))
                return _player
            }
        default:
            print("123")
        }
        
        guard let firstPlayer = playerList.first else { return }
        
        firstPlayer.connection.status(.acting(gs: state), status: players)
        
        playerList[1...].forEach({ player in
            player.connection.status(.idle(gs: state), status: players)
        })
    }
    
    mutating func join(id: String, nickname: String, connection: Connection) -> (Bool, String?) {
        if let _ = playerList.filter({ player in player.id == nickname}).first {
            return (false, "")
        }
        playerList.append(Player(id: id, name: nickname, connection: connection))
        return (true, nil)
    }
    
    
}
