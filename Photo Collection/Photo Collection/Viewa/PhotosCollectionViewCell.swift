//
//  PhotosCollectionViewCell.swift
//  Photo Collection
//
//  Created by Rebecca Overare on 4/23/20.
//  Copyright © 2020 Rebecca Overare. All rights reserved.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    var photo: Photo? {
        didSet{
            updateViews()
        }
    }
    
    func updateViews() {
        guard let image = photo?.imageData else {return}
        photoImageView.image = UIImage(data: image)
        photoLabel.text = photo?.title
    }
}
