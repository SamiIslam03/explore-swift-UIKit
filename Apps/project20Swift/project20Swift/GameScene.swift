//
//  GameScene.swift
//  project20Swift
//
//  Created by Sami Islam on 8/19/23.
//

import SpriteKit

class GameScene: SKScene {
    var gameTimer: Timer?
    var fireworks = [SKNode]()
    
    let leftEdge = -22
    let bottomEdge = -22
    let rightEdge = 1024 + 22
    
    var score = 0 {
        didSet {
            //code here
        }
    }
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .replace
        background.zPosition = -1
        addChild(background)
        
        gameTimer = Timer.scheduledTimer(timeInterval: 6, target: self, selector: #selector(launchFireWorks), userInfo: nil, repeats: true)
    }
    
    func createFireWorks(xMovement: CGFloat, x: Int, y: Int) {
        let node = SKNode()
        node.position = CGPoint(x: x, y: y)
        
        let firework = SKSpriteNode(imageNamed: "rocket")
        firework.colorBlendFactor = 1
        firework.name = "firework"
        node.addChild(firework)
        
        switch Int.random(in: 0...2) {
        case 0:
            firework.color = .cyan
            break
        case 1:
            firework.color = .green
            break
        default:
            firework.color = .red
            break
        }
        
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: xMovement, y: 1000))
        
        let move = SKAction.follow(path.cgPath, asOffset: true, orientToPath: true, speed: 200)
        node.run(move)
        
        if let emitter = SKEmitterNode(fileNamed: "fuse") {
            emitter.position = CGPoint(x: 0, y: -22)
            node.addChild(emitter)
        }
        
        fireworks.append(node)
        addChild(node)
        
    }
    
    @objc func launchFireWorks() {
        let movementAmmount: CGFloat = 1800
        
        switch Int.random(in: 0...3) {
        case 0:
            //fire five, straight up
            createFireWorks(xMovement: 0, x: 512, y: bottomEdge)
            createFireWorks(xMovement: 0, x: 512 - 200, y: bottomEdge)
            createFireWorks(xMovement: 0, x: 512 - 100, y: bottomEdge)
            createFireWorks(xMovement: 0, x: 512 + 100, y: bottomEdge)
            createFireWorks(xMovement: 0, x: 512 + 200, y: bottomEdge)
            break
        case 1:
            //fire five, in a fun
            createFireWorks(xMovement: 0, x: 512, y: bottomEdge)
            createFireWorks(xMovement: -200, x: 512 - 200, y: bottomEdge)
            createFireWorks(xMovement: -100, x: 512 - 200, y: bottomEdge)
            createFireWorks(xMovement: 100, x: 512 - 100, y: bottomEdge)
            createFireWorks(xMovement: 200, x: 512 + 200, y: bottomEdge)
            
            break
        case 2:
            //fire five, from the left to right
            createFireWorks(xMovement: movementAmmount, x: leftEdge, y: bottomEdge + 400)
            createFireWorks(xMovement: movementAmmount, x: leftEdge, y: bottomEdge + 300)
            createFireWorks(xMovement: movementAmmount, x: leftEdge, y: bottomEdge + 200)
            createFireWorks(xMovement: movementAmmount, x: leftEdge, y: bottomEdge  + 100)
            createFireWorks(xMovement: movementAmmount, x: leftEdge, y: bottomEdge)

            break
        case 3:
            //fire five, from the left to right
            createFireWorks(xMovement: movementAmmount, x: rightEdge, y: bottomEdge + 400)
            createFireWorks(xMovement: movementAmmount, x: rightEdge, y: bottomEdge + 300)
            createFireWorks(xMovement: movementAmmount, x: rightEdge, y: bottomEdge + 200)
            createFireWorks(xMovement: movementAmmount, x: rightEdge, y: bottomEdge  + 100)
            createFireWorks(xMovement: movementAmmount, x: rightEdge, y: bottomEdge)
            break
        default:
            //fire
            break
        }
    }
    
    func checkTouches(_ touches: Set<UITouch>) {
        guard let touch = touches.first else { return }
        
        let location = touch.location(in: self)
        let nodesAtPoint = nodes(at: location)
        
        for case let node as SKSpriteNode in nodesAtPoint {
            guard node.name == "firework" else { continue }
            
            
            for parent in fireworks {
                guard let firework = parent.children.first as? SKSpriteNode else { continue }
                if firework.name == "selected" && firework.color != node.color {
                    firework.name = "firework"
                    firework.colorBlendFactor = 1
                }
            }
                
            if node.name = "selected"
            node.colorBlendFactor = 0
        }
    }
}
