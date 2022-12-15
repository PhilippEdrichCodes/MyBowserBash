//
//  Mage.swift
//  BasicGame
//
//  Created by Philipp Edrich on 15.12.22.
//

import Foundation

class Mage: Character {
    
    override init() {
        super.init(with: 200)
    }
    
    override init(with max: Int) {
        super.init(with: max)
    }
    
    override func doSomething(to target: Character) -> Int{
        let chooseAction = Int.random(in: 1...100)
        print(chooseAction)
        var effect = 0
        
        switch chooseAction {
        case 91 ... 100: effect = special(to: target)
        case 67 ... 90: effect = secondaryAction(to: target)
        default: effect = primaryAction(to: target)
        }
        
        return effect
    }
    
    override func primaryAction(to target: Character) -> Int {
        return Int.random(in: 10 ... 20)
    }
    
    override func secondaryAction(to target: Character) -> Int {
        return Int.random(in: 20 ... 40)
    }
    
    func special(to target: Character) -> Int {
        return -1
    }
}
