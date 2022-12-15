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
    
    override func doSomething() -> Int{
        let chooseAction = Int.random(in: 1...100)
        var effect = 0
        
        switch chooseAction {
        case 100: effect = finisher()
        case 91 ... 99: effect = special()
        case 67 ... 90: effect = secondaryAction()
        default: effect = primaryAction()
        }
        
        return effect
    }
    
    override func primaryAction() -> Int {
        return Int.random(in: 20 ... 40)
    }
    
    override func secondaryAction() -> Int {
        return Int.random(in: 40 ... 80)
    }
    
    func special() -> Int {
        return -1
    }
    
    func finisher() -> Int {
        return -2
    }
}
