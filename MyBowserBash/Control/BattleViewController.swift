//
//  ViewController.swift
//  MyBowserBash
//
//  Created by Philipp Edrich on 15.12.22.
//

import UIKit

class BattleViewController: UIViewController {
    
    @IBOutlet weak var magicianButton: UIButton!
    @IBOutlet weak var magicianNameLabel: UILabel!
    @IBOutlet weak var magicianLifeLabel: UILabel!
    @IBOutlet weak var magicianImageView: UIImageView!
    
    @IBOutlet weak var fighterButton: UIButton!
    @IBOutlet weak var fighterNameLabel: UILabel!
    @IBOutlet weak var fighterLifeLabel: UILabel!
    @IBOutlet weak var fighterImageView: UIImageView!
    
    @IBOutlet weak var bossButton: UIButton!
    @IBOutlet weak var bossNameLabel: UILabel!
    @IBOutlet weak var bossLifeLabel: UILabel!
    @IBOutlet weak var bossImageView: UIImageView!
    
    var engine = Engine(evils: [Character()], heroes: [Character()])
    
    var boss = Boss()
    var mage = Mage()
    var fighter = Fighter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set game engine to start defaults
        prepareEngine()
        //initialize ui
        initGame()
        
        // add observer to check if game got restarted
        NotificationCenter.default.addObserver(self, selector: #selector(onRestart(_:)), name: NSNotification.Name.init("restartGame"), object: nil)
    }
    
    @objc func onRestart(_ notification: NSNotification) {
        prepareEngine()
        initGame()
    }

    func prepareEngine() {
        
        //participants
        engine.evils[0] = boss
        engine.heroes[0] = mage
        engine.heroes[1] = fighter
        
        engine.turn = 1
        engine.action = 0
        
        engine.won = false
        engine.fightIsOn = true
        
    }
    
    func setParticipants() {
        
        self.boss = engine.evils[0] as! Boss
        self.mage = engine.heroes[0] as! Mage
        self.fighter = engine.heroes[1] as! Fighter
    }
    
    func initGame() {
        
        setParticipants()
        
        magicianButton.isEnabled = true
        fighterButton.isEnabled = true
        bossButton.isEnabled = false
        
        updateLifeLabels()
    }
        
    func updateLifeLabels(){
        magicianLifeLabel.text = "\(mage.life)"
        fighterLifeLabel.text = "\(fighter.life)"
        bossLifeLabel.text = "\(boss.life)"
    }
    
    @IBAction func bossButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func mageButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func fighterButtonPressen(_ sender: UIButton) {
    }
    
}
