//
//  GameScene.swift
//  project26Swift
//
//  Created by Sami Islam on 9/1/23.
//

import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        
    }
    func loadLevel() {
        guard let levelURL = Bundle.main.url(forResource: "level1", withExtension: "txt") else { return }
        guard let levelString = try? String(contentsOf: levelURL) else { return }
        
        let lines = levelString.components(separatedBy: "\n")
        
        for (row, line) in lines.reversed().enumerated() {
            for (column, letter) in line.enumerated(){
                let position = CGPoint(x: (64 * column) + 32, y: (64 * row + 32))
                if letter == "x" {
                    //load wall
                } else if letter == "v" {
                    //load vortex
                } else if letter == "s" {
                    //load star
                } else if letter == "f" {
                    //load finish point
                } 
            }
        }
    }
}
