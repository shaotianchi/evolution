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
        // change player's status
        var players = playerList
        switch state {
        case .card:
            players = playerList.map { player -> Player in
                var player = player
                let count = player.status.cards.count + player.status.creatures.count
                player.status.cards.append(contentsOf: Card.gen(count: count == 0 ? 6 : UInt(count + 2)))
                return player
            }
        default:
            playerList = players
        }
        
        guard let firstPlayer = players.first else { return }
        
        firstPlayer.connection.status(.acting(gs: state), status: GameStatus(currentPlayer: firstPlayer, otherCreatures: players[1...].reduce([:], { result, player in
            var result = result
            result[player.id] = player.status.creatures
            return result
        }), foods: 0, state: state))
        
        players[1...].forEach({ player in
            let otherCreatures = players.filter { $0.id != player.id }.reduce([:], { result, player -> [String : [Creature]] in
                var result = result
                result[player.id] = player.status.creatures
                return result
            })
            player.connection.status(.idle(gs: state), status: GameStatus(currentPlayer: player, otherCreatures: otherCreatures, foods: 0, state: state))
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
