//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Александр on 26.07.21.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
    
    @IBOutlet var photoImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    
    // код активирует функцию поделиться фото
    @IBAction func TapToShare(_ sender: Any) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        // Удостоверяюсь, что фото доставленно
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Success!")
            }
        }
        
        present(shareController, animated: true, completion: nil)
    }
    
 

}
