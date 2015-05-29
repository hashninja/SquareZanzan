//
//  UnitedBricks.swift
//  SquareZanzan
//
//  Created by user on 15/5/27.
//  Copyright (c) 2015年 ToBe. All rights reserved.
//

import Foundation

class UnitedBricks {
    private var bricks: Set<Brick>
    private var centerBrick: Brick
    
    init() {
        self.bricks = Set<Brick>()
        self.centerBrick = Brick(column: 0, row: 0)
    }
}
