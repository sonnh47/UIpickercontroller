//
//  ViewController.swift
//  UIpickercontroller
//
//  Created by Son on 11/6/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate{
    
    @IBOutlet weak var photoChoice: UIImageView!
    var alert: UIAlertController?
    let pickerCamera = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerCamera.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert(_ sender: UIButton) {
        alert = UIAlertController(title: "Alert", message: "This is my alert", preferredStyle: .actionSheet)
        let cammeraAction = UIAlertAction(title: "Photo", style: .default) { (camera) in
//            photoChoice.image
            self.openCamera()
        }
        let photoAction = UIAlertAction(title: "Photo", style: .default) { (library) in
            print(library)
        }
        
        alert?.addAction(cammeraAction)
        alert?.addAction(photoAction)
        self.present(alert!, animated: true, completion: nil)
    }
    
    func openCamera() {
        pickerCamera.allowsEditing = false
        pickerCamera.sourceType = .photoLibrary
        present(pickerCamera, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//        if let pickedImage = info[UIImagePickercon] {
//            <#code#>
//        }
    }
    
}

