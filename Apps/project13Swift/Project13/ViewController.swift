//
//  ViewController.swift
//  Project13
//
//  Created by TwoStraws on 18/08/2016.
//  Copyright © 2016 Paul Hudson. All rights reserved.
//


import CoreImage
import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var intensity: UISlider!
    var currentImage: UIImage!
    
    var context: CIContext!     //Core image component that handles rendering
    var currentFilter: CIFilter!//It will store whatever filter the user has activated
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Instafilter"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(importPicture))
        context = CIContext()
        currentFilter = CIFilter(name: "CISepiaTone")
    }
    
    @objc func importPicture () {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }
        dismiss(animated: true)
        currentImage = image
        
        let beginImage = CIImage(image: currentImage)
        currentFilter.setValue(beginImage, forKey: kCIInputImageKey)
        applyProcessing()
    }
    @IBAction func changeFilter(_ sender: UIButton) {
        let ac = UIAlertController(title: "Choose filter", message: nil, preferredStyle: .actionSheet)
            ac.addAction(UIAlertAction(title: "CIBumpDistortion", style: .default, handler: setFilter))
            ac.addAction(UIAlertAction(title: "CIGaussianBlur", style: .default, handler: setFilter))
            ac.addAction(UIAlertAction(title: "CIPixellate", style: .default, handler: setFilter))
            ac.addAction(UIAlertAction(title: "CISepiaTone", style: .default, handler: setFilter))
            ac.addAction(UIAlertAction(title: "CITwirlDistortion", style: .default, handler: setFilter))
            ac.addAction(UIAlertAction(title: "CIUnsharpMask", style: .default, handler: setFilter))
            ac.addAction(UIAlertAction(title: "CIVignette", style: .default, handler: setFilter))
            ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        if let popoverController = ac.popoverPresentationController {
            popoverController.sourceView = sender
            popoverController.sourceRect = sender.bounds
        }
        
        present(ac, animated: true)
    }
    
    func setFilter (action: UIAlertAction) {
        guard currentImage != nil else { return }
        guard let acctionTitle = action.title else { return }
        
        currentFilter = CIFilter(name: acctionTitle)
        
        let beginImage = CIImage(image: currentImage)
        currentFilter.setValue(beginImage, forKey: kCIInputImageKey)
        
        applyProcessing()
    }
    
    @IBAction func save(_ sender: Any) {
    }
    
    @IBAction func intensityChanged(_ sender: Any) {
        applyProcessing()
    }
    
    
    //You cannot convert CI image to UI image directly. we use CG image.
    func applyProcessing() {
        let inputKeys = currentFilter.inputKeys
        
        if inputKeys.contains(kCIInputIntensityKey) {
            currentFilter.setValue(intensity.value, forKey: kCIInputIntensityKey)
        }
        
        if inputKeys.contains(kCIInputRadiusKey ) {
            currentFilter.setValue(intensity.value * 200, forKey: kCIInputRadiusKey)
        }
        
        if inputKeys.contains(kCIInputScaleKey) {
            currentFilter.setValue(intensity.value * 10, forKey: kCIInputScaleKey)
        }
        
        if inputKeys.contains(kCIInputCenterKey) {
            currentFilter.setValue(CIVector(x: currentImage.size.width / 2, y: currentImage.size.height / 2), forKey: kCIInputCenterKey) 
        }
        
        guard let image = currentFilter.outputImage else { return }
        
        if let cgimg = context.createCGImage(image, from: image.extent) {
            let processedImage = UIImage(cgImage: cgimg)
            imageView.image = processedImage
        }
    }
}

