//
//  PhotoDetailViewController.swift
//  Photo Collection
//
//  Created by Rebecca Overare on 4/23/20.
//  Copyright © 2020 Rebecca Overare. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    var photoController: PhotoController?
    var photo: Photo?
    var themeHelper: ThemeHelper?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
      
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func addPhoto(_ sender: Any) {
    }
    
    
    @IBAction func savePhoto(_ sender: Any) {
    }

    func setTheme() {
        
        if let theme = themeHelper?.themePreference {
            if theme == "Dark" {
                view.backgroundColor = .darkGray
            } else if theme == "Purple" {
                view.backgroundColor = .purple
            }
        }
    }
    
    func updateViews() {
        
        guard let photo = photo else {return}
        
        let image = photo.imageData
        
        imageView.image = UIImage(data: image)
        textField.text = photo.title
}
        

}
