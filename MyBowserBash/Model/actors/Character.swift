//
//  Character.swift
//  BasicGame
//
//  Created by Philipp Edrich on 15.12.22.
//

import Foundation

class Character {
    var maxLife: Int
    var life: Int
    
    init() {
        self.maxLife = 200
        self.life = self.maxLife
    }
    
    init(with max: Int) {
        self.maxLife = max
        self.life = self.maxLife
    }
    
    init(with life: Int, of max: Int) {
        self.maxLife = max
        self.life = life
    }
    
    func doSomething(to target: Character) -> Int{
        
        let chooseAction = Int.random(in: 1...100)
        var effect = 0
        
        switch chooseAction {
        case 71 ... 100: effect = secondaryAction(to: target)
        default: effect = primaryAction(to: target)
        }
        
        return effect
        
    }
    
    func primaryAction(to target: Character) -> Int{
        return 10
    }
    
    func secondaryAction(to target: Character) -> Int {
        return 20
    }
    
    func chooseTarget(from targets: [Character]) -> Character {
        let target = targets[Int.random(in: 0 ... targets.count)]
        return target
    }
}
