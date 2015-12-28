//
//  GameScene.swift
//  SuperSpaceMan
//
//  Created by Zakaria Ahmed on 27/12/15.
//  Copyright (c) 2015 Panbat. All rights reserved.
//

import SpriteKit


class GameScene: SKScene, SKPhysicsContactDelegate {
    
  
    
    // Here we are creating instances of SKSpriteNode
    var backgroundNode:SKSpriteNode?
    var playerNode:SKSpriteNode?
    var orbNode:SKSpriteNode?
    
    
    let CollisionCategoryPlayer     : UInt32 = 0x1 << 1
    let CollisionCategoryPowerUpOrbs : UInt32 = 0x1 << 2
   
    required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    }
    
    override init(size: CGSize) {
    super.init(size: size)
        
    physicsWorld.contactDelegate = self
        
    physicsWorld.gravity = CGVectorMake(0.0, -2.0);
        
    backgroundColor = SKColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        
    // turning on user interaction
    userInteractionEnabled = true
    
    
        
    //adding the background
    
    backgroundNode = SKSpriteNode(imageNamed: "Background")
    backgroundNode?.anchorPoint = CGPoint(x: 0.5, y: 0.0)
    backgroundNode?.position = CGPoint(x: size.width / 2.0, y: 0.0)
    addChild(backgroundNode!)
    
    //Adding the player
    playerNode = SKSpriteNode(imageNamed: "Player")
    //Going to give this motherfucker some physicsbody
    playerNode!.physicsBody = SKPhysicsBody(circleOfRadius: playerNode!.size.width / 2)
    playerNode!.physicsBody!.dynamic = true
    playerNode!.position = CGPoint(x: size.width / 2.0, y: size.height / 2.0)
    //the playerNode will fall more slowly, simulating the resistance of falling through air.
    playerNode?.physicsBody?.linearDamping = 1.0
    playerNode?.physicsBody?.allowsRotation = false
    addChild(playerNode!)
    
    //adding the orb
    orbNode = SKSpriteNode(imageNamed: "PowerUp")
    orbNode!.position = CGPoint(x: 150.0, y: size.height - 25)
    orbNode!.physicsBody = SKPhysicsBody(circleOfRadius: orbNode!.size.width / 2)
    orbNode!.physicsBody!.dynamic = false
    addChild(orbNode!)
    
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        playerNode!.physicsBody!.applyImpulse(CGVectorMake(0.0, 40.0))
        
    }
    
    func didBeginContact(contact: SKPhysicsContact!) {
        print("There has been contact.")
    }
    
}