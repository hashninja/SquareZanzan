//
//  Brick.swift
//  SquareZanzan
//
//  Created by user on 15/5/27.
//  Copyright (c) 2015年 ToBe. All rights reserved.
//

import Foundation

class Brick : Hashable {
    var column: Int
    var row: Int
    
    init(column: Int, row: Int) {
        self.column = column
        self.row = row
    }
    
    var hashValue: Int {
        return row * 10 + column
    }
    
    func rotateAntiClockQuaterAround(brick: Brick) {
        let distant = self - brick
        let numSteps = distant * distant
        
        for (var step = 0; step < numSteps; step++) {
            self .stepAntiClockAround(brick)
        }
    }
    
    func stepAntiClockAround(brick: Brick) {
        //
    }
    
    func fallDown() {
        row += 1
    }
    
    func fallDownFast() {
        row += 3
    }
    //
}

func ==(lhs: Brick, rhs: Brick) -> Bool {
    return (lhs.column == rhs.column) && (lhs.row == rhs.row)
}

func -(lhs: Brick, rhs: Brick) -> Int {
    return max(abs(lhs.row - rhs.row), abs(lhs.column - rhs.column))
}