//
//  ViewController.swift
//  MyBowserBash
//
//  Created by Philipp Edrich on 15.12.22.
//

import UIKit

class BattleViewController: UIViewController {
  
    // MARK: - Outlets
        
    // set outlets for managing ui elements
    // hero1
    @IBOutlet weak var leftHeroButton: UIButton!
    @IBOutlet weak var leftHeroNameLabel: UILabel!
    @IBOutlet weak var leftHeroLifeLabel: UILabel!
    @IBOutlet weak var leftHeroImageView: UIImageView!
    // hero2
    @IBOutlet weak var rightHeroButton: UIButton!
    @IBOutlet weak var rightHeroNameLabel: UILabel!
    @IBOutlet weak var rightHeroLifeLabel: UILabel!
    @IBOutlet weak var rightHeroImageView: UIImageView!
    // foe
    @IBOutlet weak var bossButton: UIButton!
    @IBOutlet weak var bossNameLabel: UILabel!
    @IBOutlet weak var bossLifeLabel: UILabel!
    @IBOutlet weak var bossImageView: UIImageView!
    
    // MARK: - Properties
    
    // game engine
    var engine = Engine(evils: [Character()], heroes: [Character()])
    
    // fighters
    var boss = Boss()
    var hero1 = Mage()
    var hero2 = Fighter()

    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set game engine to start defaults
        prepareEngine()
        //initialize ui
        initGame()
        
        // add observer to check if game got restarted
        NotificationCenter.default.addObserver(self, selector: #selector(onRestart(_:)), name: NSNotification.Name.init("restartGame"), object: nil)
    }
    
    // MARK: - Objective-C selector methods
    
    @objc func onRestart(_ notification: NSNotification) {
        // set game engine to start defaults
        prepareEngine()
        // initialize ui
        initGame()
    }
    
    // MARK: - Initialize Game

    func prepareEngine() {
        
        engine.turn = 1
        engine.action = 0
        
        engine.isPlayersTurn = true
        engine.won = false
        engine.fightIsOn = true
        
        setCombatants()
    }
    
    func setCombatants() {
        
        self.boss = engine.evils[0] as! Boss
        self.hero1 = engine.heroes[0] as! Mage
        self.hero2 = engine.heroes[1] as! Fighter
    }
    
    func initGame() {
        
        updateLifeLabels()
        updateButtons()
    }
    
    // MARK: - Update UI
        
    func updateLifeLabels(){
        leftHeroLifeLabel.text = "\(hero1.life)"
        rightHeroLifeLabel.text = "\(hero2.life)"
        bossLifeLabel.text = "\(boss.life)"
    }
    
    func updateButtons() {
        let playersTurn = engine.isPlayersTurn
        switch playersTurn {
        case true:
            bossButton.isEnabled = false
            leftHeroButton.isEnabled = true
            rightHeroButton.isEnabled = true
        case false:
            bossButton.isEnabled = true
            leftHeroButton.isEnabled = false
            rightHeroButton.isEnabled = false
        }
    }
    
    // MARK: - Actions
    
    @IBAction func bossTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func leftHeroTapped(_ sender: UIButton) {
    }
    
    @IBAction func rightHeroTapped(_ sender: UIButton) {
    }
    
}
