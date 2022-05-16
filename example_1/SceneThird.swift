//
//  SceneThird.swift
//  example_1
//
//  Created by Ömer Faruk Turhan on 11.03.2022.
//

import Foundation
import SpriteKit
class SceneThird: SKScene {
    
    var textbox:SKLabelNode!
    var ilk_yazi_s2 = "Seviye 3"
    
    override func didMove(to view: SKView) {
        self.backgroundColor = SKColor.red;
        
        textbox = SKLabelNode(fontNamed:"Chalkduster")
        textbox.text = String(ilk_yazi_s2)
        textbox.fontSize = 45
        textbox.position = CGPoint(x: 0, y: 300)
        
        self.addChild(textbox)
    }
    
    
      
    
    
}
