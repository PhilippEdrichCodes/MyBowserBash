//
//  File.swift
//  BasicGame
//
//  Created by Philipp Edrich on 15.12.22.
//

import Foundation

class Fighter: Character {
    override init() {
        super.init(with: 200)
    }
    override init(with max: Int) {
        super.init(with: max)
    }
    
    override func doSomething() -> Int{
        let chooseAction = Int.random(in: 1...100)
        var effect = 0
        
        switch chooseAction {
        case 91 ... 100: effect = special()
        case 67 ... 90: effect = secondaryAction()
        default: effect = primaryAction()
        }
        
        return effect
    }
    
    override func primaryAction() -> Int {
        return Int.random(in: 10 ... 20)
    }
    
    override func secondaryAction() -> Int {
        return Int.random(in: 20 ... 40)
    }
    
    func special() -> Int {
        return 100
    }
}
