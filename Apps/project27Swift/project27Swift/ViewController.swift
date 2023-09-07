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
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))

        let img = renderer.image { ctx in
            // awesome drawing code
            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)

            ctx.cgContext.addRect(rectangle)
            ctx.cgContext.drawPath(using: .fillStroke)
        }

        imageView.image = img
    }
    let rectangle = CGRect(x: 0, y: 0, width: 512, height: 512)

}

