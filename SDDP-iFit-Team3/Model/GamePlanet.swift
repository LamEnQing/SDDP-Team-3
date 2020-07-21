//
//  GamePlanet.swift
//  SDDP-iFit-Team3
//
//  Created by 182452K  on 7/19/20.
//  Copyright © 2020 SDDP_Team3. All rights reserved.
//

import SpriteKit

class GamePlanet: SKScene {
    
    var playerFitness = 10
    var playerPlanets = 10
    var playerTroops = 10
    
    var planetsList = ["earth", "fireball", "redcrater", "desert", "cat", "eagle"]
    
    override func didMove(to view: SKView) {
        let bg = SKSpriteNode(imageNamed: "space")
        bg.size = self.size
        bg.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        bg.zPosition = 0
        self.addChild(bg)
        
        let closeButton = SKSpriteNode(imageNamed: "yellowbutton")
        closeButton.name = "homeButton"
        closeButton.size = CGSize(width: 80, height: 80)
        closeButton.position = CGPoint(x: self.size.width * 0.25, y: self.size.height * 0.85)
        closeButton.zPosition = 2
        self.addChild(closeButton)
        
        let planetMainText = SKLabelNode(fontNamed: "The Bold Font")
        planetMainText.text = "PLANETS"
        planetMainText.fontSize = 65
        planetMainText.fontColor = SKColor.white
        planetMainText.position = CGPoint(x: self.size.width/2, y: self.size.height * 0.85)
        planetMainText.zPosition = 2
        self.addChild(planetMainText)
        
        let finessIcon = SKSpriteNode(imageNamed: "barbell")
        finessIcon.size = CGSize(width: 100, height: 100)
        finessIcon.position = CGPoint(x: self.size.width * 0.25, y: self.size.height * 0.85)
        finessIcon.zPosition = 2
        self.addChild(finessIcon)
        
        let fitnessText = SKLabelNode(fontNamed: "The Bold Font")
        fitnessText.text = "\(playerFitness)"
        fitnessText.fontSize = 60
        fitnessText.fontColor = SKColor.white
        fitnessText.position = CGPoint(x: self.size.width * 0.33, y: self.size.height * 0.84)
        fitnessText.zPosition = 2
        self.addChild(fitnessText)
        
        //
        let planetIcon = SKSpriteNode(imageNamed: "earth")
        planetIcon.size = CGSize(width: 100, height: 100)
        planetIcon.position = CGPoint(x: self.size.width * 0.75, y: self.size.height * 0.85)
        planetIcon.zPosition = 2
        self.addChild(planetIcon)
        
        let planetText = SKLabelNode(fontNamed: "The Bold Font")
        planetText.text = "\(playerPlanets)"
        planetText.fontSize = 60
        planetText.fontColor = SKColor.white
        planetText.position = CGPoint(x: self.size.width * 0.67, y: self.size.height * 0.84)
        planetText.zPosition = 2
        self.addChild(planetText)
        
        let discoverButton = SKSpriteNode(imageNamed: "yellowbutton")
        discoverButton.name = "discoverButton"
        discoverButton.size = CGSize(width: 600, height: 120)
        discoverButton.position = CGPoint(x: self.size.width/2, y: self.size.height * 0.15)
        discoverButton.zPosition = 1
        self.addChild(discoverButton)
        
        let discoverText = SKLabelNode(fontNamed: "The Bold Font")
        discoverText.text = "DISCOVER"
        discoverText.fontSize = 60
        discoverText.fontColor = SKColor.black
        discoverText.position = CGPoint(x: self.size.width/2, y: self.size.height * 0.13)
        discoverText.zPosition = 2
        self.addChild(discoverText)
        //
        
        //
        let earth = SKSpriteNode(imageNamed: "earth")
        earth.size = CGSize(width: self.size.width * 0.2, height: self.size.height * 0.15)
        earth.position = CGPoint(x: self.size.width * 0.35, y: self.size.height * 0.7)
        earth.zPosition = 1
        self.addChild(earth)
        
        let fireball = SKSpriteNode(imageNamed: "fireball")
        fireball.size = CGSize(width: self.size.width * 0.2, height: self.size.height * 0.15)
        fireball.position = CGPoint(x: self.size.width * 0.65, y: self.size.height * 0.7)
        fireball.zPosition = 1
        self.addChild(fireball)
        
        let redcrater = SKSpriteNode(imageNamed: "redcrater")
        redcrater.size = CGSize(width: self.size.width * 0.2, height: self.size.height * 0.15)
        redcrater.position = CGPoint(x: self.size.width * 0.35, y: self.size.height * 0.5)
        redcrater.zPosition = 1
        self.addChild(redcrater)
        
        let desert = SKSpriteNode(imageNamed: "desert")
        desert.size = CGSize(width: self.size.width * 0.2, height: self.size.height * 0.15)
        desert.position = CGPoint(x: self.size.width * 0.65, y: self.size.height * 0.5)
        desert.zPosition = 1
        self.addChild(desert)
        
        let cat = SKSpriteNode(imageNamed: "cat")
        cat.size = CGSize(width: self.size.width * 0.2, height: self.size.height * 0.15)
        cat.position = CGPoint(x: self.size.width * 0.35, y: self.size.height * 0.3)
        cat.zPosition = 1
        self.addChild(cat)
        
        let egg = SKSpriteNode(imageNamed: "egg")
        egg.size = CGSize(width: self.size.width * 0.2, height: self.size.height * 0.15)
        egg.position = CGPoint(x: self.size.width * 0.65, y: self.size.height * 0.3)
        egg.zPosition = 1
        self.addChild(egg)
        
        //
        let earthText = SKLabelNode(fontNamed: "The Bold Font")
        earthText.text = "Earth"
        earthText.fontSize = 45
        earthText.fontColor = SKColor.white
        earthText.position = CGPoint(x: self.size.width * 0.35, y: self.size.height * 0.6)
        earthText.zPosition = 1
        self.addChild(earthText)
        
        let fireballText = SKLabelNode(fontNamed: "The Bold Font")
        fireballText.text = "Fireball"
        fireballText.fontSize = 45
        fireballText.fontColor = SKColor.white
        fireballText.position = CGPoint(x: self.size.width * 0.65, y: self.size.height * 0.6)
        fireballText.zPosition = 1
        self.addChild(fireballText)
        
        let redcraterText = SKLabelNode(fontNamed: "The Bold Font")
        redcraterText.text = "Red Crater"
        redcraterText.fontSize = 45
        redcraterText.fontColor = SKColor.white
        redcraterText.position = CGPoint(x: self.size.width * 0.35, y: self.size.height * 0.4)
        redcraterText.zPosition = 1
        self.addChild(redcraterText)
        
        let desertText = SKLabelNode(fontNamed: "The Bold Font")
        desertText.text = "Desert"
        desertText.fontSize = 45
        desertText.fontColor = SKColor.white
        desertText.position = CGPoint(x: self.size.width * 0.65, y: self.size.height * 0.4)
        desertText.zPosition = 1
        self.addChild(desertText)
        
        let catText = SKLabelNode(fontNamed: "The Bold Font")
        catText.text = "Cat's Play"
        catText.fontSize = 45
        catText.fontColor = SKColor.white
        catText.position = CGPoint(x: self.size.width * 0.35, y: self.size.height * 0.2)
        catText.zPosition = 1
        self.addChild(catText)
        
        let eggText = SKLabelNode(fontNamed: "The Bold Font")
        eggText.text = "Eagle's Nest"
        eggText.fontSize = 45
        eggText.fontColor = SKColor.white
        eggText.position = CGPoint(x: self.size.width * 0.65, y: self.size.height * 0.2)
        eggText.zPosition = 1
        self.addChild(eggText)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches {
            
            let pointOfTouch = touch.location(in: self)
            for nodeTapped in nodes(at: pointOfTouch) {
                
                let transition = SKTransition.fade(withDuration: 0.5)
                
                if nodeTapped.name == "homeButton"{
                    let sceneChange = GameHome(size: self.size)
                    sceneChange.scaleMode = self.scaleMode
                    sceneChange.playerFitness = playerFitness
                    sceneChange.playerPlanets = playerPlanets
                    sceneChange.playerTroops = playerTroops
                    self.view!.presentScene(sceneChange, transition: transition)
                }
                if nodeTapped.name == "discoverButton"{
                    discoverPlanet()
                    
                    
                }
            }
        }
    }
    
    func discoverPlanet() {
        var playerNextPlanet = playerPlanets + 1
        var sufficientCost = false
        var planetCost = 0
        
        switch playerNextPlanet{
        case 2: planetCost = 10
        case 3: planetCost = 25
        case 4: planetCost = 50
        default:
            planetCost = 100
        }
        
        if playerFitness >= planetCost {
            sufficientCost = true
            //not working yet
            playerFitness -= planetCost
            print("SCAMMMM ", playerFitness)
            
            let sceneChange = GameDiscover(size: self.size)
            sceneChange.scaleMode = self.scaleMode
            sceneChange.playerFitness = playerFitness
            sceneChange.playerPlanets = playerPlanets
            sceneChange.playerTroops = playerTroops
            let transition = SKTransition.fade(withDuration: 0.5)
            self.view!.presentScene(sceneChange, transition: transition)
        }
        else {
            print("gg u need do more fit")
        }
    }
    
    func loadPlanet() {
        
        //rmb call function
        var sum = 0
        for i in planetsList {
            sum += 1
            if sum < playerPlanets {
                //load planets, else show qns mark image
            }
        }
    }
}
