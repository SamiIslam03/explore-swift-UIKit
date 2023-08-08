//
//  Person.swift
//  project-10-swift
//
//  Created by Sami Islam on 8/5/23.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
