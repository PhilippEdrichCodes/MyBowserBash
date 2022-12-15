//
//  Boss.swift
//  BasicGame
//
//  Created by Philipp Edrich on 15.12.22.
//

import Foundation

class Boss: Character {
    
    override init() {
        super.init(with: 600)
    }
    
    override init(with max: Int) {
        super.init(with: max)
    }
    
    override func doSomething(to target: Character) -> Int{
        let chooseAction = Int.random(in: 1...100)
        var effect = 0
        
        switch chooseAction {
        case 100: effect = finisher(to: target)
        case 91 ... 99: effect = special(to: target)
        case 67 ... 90: effect = secondaryAction(to: target)
        default: effect = primaryAction(to: target)
        }
        
        return effect
    }
    
    override func primaryAction(to target: Character) -> Int {
        return Int.random(in: 20 ... 40)
    }
    
    override func secondaryAction(to target: Character) -> Int {
        return Int.random(in: 40 ... 80)
    }
    
    func special(to target: Character) -> Int {
        return -1
    }
    
    func finisher(to target: Character) -> Int {
        return -2
    }
}
