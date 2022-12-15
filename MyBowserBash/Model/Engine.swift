//
//  Engine.swift
//  BasicGame
//
//  Created by Philipp Edrich on 15.12.22.
//

import Foundation

struct Engine {
    
    var evils: [Character]
    var heroes: [Character]
    
    var fightIsOn = true
    var won = false
    var isPlayersTurn = true
    
    var turn = 1
    var action = 0
}
