//
//  ViewController.swift
//  project18Swift
//
//  Created by Sami Islam on 8/16/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        print("Some messages")
//        print(1, 2, 3, 4, 5, separator: "-")
//        print("Some message", terminator: " ")
//        assert(1 == 1, "Math Failure!")
//        assert(1 == 2, "Math Failure!")
        assert(myReallySlowMethod() == true, "The slow method return false, which is a bad thing")
        
    }
    
    func myReallySlowMethod () -> Bool {
        return false
    }

}

