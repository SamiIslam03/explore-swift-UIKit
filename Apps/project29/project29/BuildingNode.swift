//
//  BuildingNode.swift
//  project29
//
//  Created by Sami Islam on 9/11/23.
//

import SpriteKit
import UIKit

class BuildingNode: SKSpriteNode {
    var currentImage: UIImage!
    
    func setup() {
        name = "building"
        
        currentImage = drawBuilding(size: size)
        texture = SKTexture(image: currentImage)
        
        configurePhysics()
    }
    
    func configurePhysics() {
        physicsBody = SKPhysicsBody(texture: texture!, size: size)
        physicsBody?.isDynamic = false
        physicsBody?.categoryBitMask = CollissionType.building.rawValue
        physicsBody?.contactTestBitMask = CollissionType.banana.rawValue
    }
    

}
