//
//  ViewController.swift
//  project27Swift
//
//  Created by Sami Islam on 9/6/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var currentDrawType = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        drawRectangle()

    }
    @IBAction func redrawTapped(_ sender: Any) {
        currentDrawType += 1

            if currentDrawType > 5 {
                currentDrawType = 0
            }

            switch currentDrawType {
            case 0:
                drawRectangle()

            default:
                break
            }
    }
    func drawRectangle() {

    }
    

}

