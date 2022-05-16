//
//  GameScene.swift
//  example_1
//
//  Created by Ömer Faruk Turhan on 10.03.2022.
//

import SpriteKit
import GameplayKit

struct PhysicsCatagory {
    static let monster : UInt32 = 0x1 << 1
    static let Ground : UInt32 = 0x1 << 2
    static let Wall : UInt32 = 0x1 << 3
}

class GameScene: SKScene {
    
    var bluebox = SKSpriteNode()
    var firstcat = SKSpriteNode()
    var button: SKNode! = nil
    var currentMoney = "Seviye 1"
    var settext = "Başardın"
    var textbox:SKLabelNode!
    var cathome = SKSpriteNode()
    
    
    override func didMove(to view: SKView) {
        
        self.backgroundColor = SKColor.red;
        
        // when I click the screen then music is gonna play!
        let backgroundMusic = SKAudioNode(fileNamed: "driveforever.mp3")
        backgroundMusic.autoplayLooped = true
        addChild(backgroundMusic)
        
        
        
        
        
        // it is gonna set the label which is as I wanted
                
                textbox = SKLabelNode(fontNamed:"Chalkduster")
                textbox.text = String(currentMoney)
                textbox.fontSize = 25
                textbox.position = CGPoint(x: 0, y: 150)
       
               
        
        
        // code of first cat
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        firstcat = SKSpriteNode(imageNamed: "player_cat")
        firstcat.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        firstcat.size = CGSize(width: 80, height: 65)
        firstcat.zPosition = 1;
        
        print("x:\(firstcat.position.x), y:\(firstcat.position.y)")
       
        // code's of cat home
        
        cathome = SKSpriteNode(imageNamed: "cat_home")
        cathome.size = CGSize(width: 150, height: 200)
        cathome.position = CGPoint(x: 5, y: 10)
        
      
        // code of blue box
       // self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
       // bluebox = SKSpriteNode(color: UIColor.cyan, size: CGSize(width: 50, height: 30))
       // bluebox.anchorPoint = CGPoint(x: 0.5, y: 0.5)
       // bluebox.position = CGPoint(x: 0.5, y: 0.5)
    
       // print("x:\(bluebox.position.x), y:\(bluebox.position.y)")
        
        
       // self.addChild(bluebox)
        self.addChild(textbox)
        self.addChild(cathome)
        self.addChild(firstcat)
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
                // it changes to the other page
               //let sceneTwo = Scenetwo(fileNamed: "Scenetwo")
              //sceneTwo?.scaleMode = .aspectFill
             // self.view?.presentScene(sceneTwo!, transition: SKTransition.fade(withDuration: 1))
        
      
        
            // it is the red button of center
              button = SKSpriteNode(color: SKColor.black, size: CGSize(width: 80, height: 65))
              button.position = CGPoint(x: 0, y: -150);
              self.addChild(button)
                
                
           //this code show us where we click on the swift
          //if let touch = touches.first {
         //let location = touch.location(in: self)
        //print(location)
       // }
        
           }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            
            let location = touch.location(in: self)
            firstcat.position.x = location.x
            firstcat.position.y = location.y
            // when we on it then if statement gonna work like ;..,,
            if firstcat.position.x == 3.333327293395996 && firstcat.position.y == 60.33334732055664{
                let sceneTwo = Scenetwo(fileNamed: "Scenetwo")
                sceneTwo?.scaleMode = .aspectFill
               self.view?.presentScene(sceneTwo!, transition: SKTransition.fade(withDuration: 1))
                
              textbox.text = String(settext)
              print("You are Done!");
                 
            }
         // it'll write x and y on the screen
            print("x:\(firstcat.position.x ), y:\(firstcat.position.y)")
            print("x:\(button.position.x ), y:\(button.position.y)")
        }
    }
   
    

    // end of the story brother
    }
    

