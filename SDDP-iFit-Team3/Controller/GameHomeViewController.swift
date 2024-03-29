//
//  GameHomeViewController.swift
//  SDDP-iFit-Team3
//
//  Created by 182452K  on 7/14/20.
//  Copyright © 2020 SDDP_Team3. All rights reserved.
//

import UIKit
import SpriteKit

class GameHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameHome.sks'
            let scene = GameHome(size: CGSize(width: 1536, height: 2048))
            //            if let scene = SKScene(fileNamed: "GameScene") {
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            
            var playerGameData: Game = Game(armyCount: 0, planets: 0, userId: "", points: 0, score: 0)
            if let user = UserAuthentication.getLoggedInUser() {
                DataManager.GamesClass.loadGame(userId: user.uid) { (data) in
                    
                    if let data = data {
                        playerGameData = data
//                        print("hiii VC DATAAA: ", playerGameData.armyCount)
                        
                        var armyCount: String = "\(playerGameData.armyCount)"
                        var planetCount : String = "\(playerGameData.planets)"
                        var points : String = "\(playerGameData.points)"
                        var score : String = "\(playerGameData.score)"
                        
                        
                        scene.userData = NSMutableDictionary()
                        scene.userData?.setObject(armyCount, forKey: "armyCount" as NSCopying)
                        scene.userData?.setObject(planetCount, forKey: "planetCount" as NSCopying)
                        scene.userData?.setObject(points, forKey: "points" as NSCopying)
                        scene.userData?.setObject(score, forKey: "score" as NSCopying)
                        
                        // Present the scene
                        view.presentScene(scene)
                        //            }
                        
                        view.ignoresSiblingOrder = true
                        
                        view.showsFPS = true
                        view.showsNodeCount = true
                        
//                        var a = scene.userData?.value(forKey: "a")
//                        print("HIIII \(a)")
                    }
                }
            }
        }
    }
    
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
