//
//  GameViewController.swift
//  SquareZanzan
//
//  Created by user on 15/5/27.
//  Copyright (c) 2015年 ToBe. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let scene = GameScene()
        let skView = self.view as! SKView
        skView.presentScene(scene)
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
