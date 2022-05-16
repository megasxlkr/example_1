//
//  Scenetwo.swift
//  example_1
//
//  Created by Ömer Faruk Turhan on 11.03.2022.
//

import Foundation
import SpriteKit



class Scenetwo: SKScene {
  
    var playercat = SKSpriteNode()
    var ilk_yazi_s2 = "Seviye 2"
    var textbox:SKLabelNode!
    var kedievi = SKSpriteNode()
    var firstcat = SKSpriteNode()
    var settext = "Seviye 2 geçildi"
    
    override func didMove(to view: SKView) {
        
        self.backgroundColor = SKColor.red;
 
        // code of first cat
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        playercat = SKSpriteNode(imageNamed: "player_cat")
        playercat.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        playercat.size = CGSize(width: 120 , height: 80)
        playercat.zPosition = 1;
        
        print("x:\(playercat.position.x), y:\(playercat.position.y)")
        // it is gonna set the label which is as I wanted
                
        textbox = SKLabelNode(fontNamed:"Chalkduster")
        textbox.text = String(ilk_yazi_s2)
        textbox.fontSize = 45
        textbox.position = CGPoint(x: 0, y: 300)

        // code's of cat home
        kedievi = SKSpriteNode(imageNamed: "cat_home")
        kedievi.size = CGSize(width: 150, height: 220)
        kedievi.position = CGPoint(x: 150, y: 10)
     
       
        self.addChild(textbox)
        self.addChild(kedievi)
        self.addChild(playercat)
        
    }
    
   
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            
            let location = touch.location(in: self)
            playercat.position.x = location.x
            playercat.position.y = location.y
            
            if playercat.position.x == 34.42029571533203   && playercat.position.y == -30.79708480834961{
                
            let scenethird = SceneThird(fileNamed: "SceneThird")
            scenethird?.scaleMode = .aspectFill
            self.view?.presentScene(scenethird!, transition: SKTransition.fade(withDuration: 1))
                
              textbox.text = String(ilk_yazi_s2)
              print("Başardın!");
                 
            }
            print("x:\(playercat.position.x ), y:\(playercat.position.y)")
        }
    }
}
