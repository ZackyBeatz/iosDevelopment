//
//  GameViewController.swift
//  SuperSpaceMan
//
//  Created by Zakaria Ahmed on 27/12/15.
//  Copyright (c) 2015 Panbat. All rights reserved.
//
import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    var scene: GameScene!
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
    // 1. Configure the main view
        
    let skView = view as! SKView
    skView.showsFPS = true
        
    // 2. Create and configure our game scene
    scene = GameScene(size: skView.bounds.size)
    scene.scaleMode = .AspectFill
        
    // 3. Show the scene.
    skView.presentScene(scene)
    }
    
}