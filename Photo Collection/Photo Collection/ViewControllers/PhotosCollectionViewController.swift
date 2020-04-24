//
//  PhotosCollectionViewController.swift
//  Photo Collection
//
//  Created by Rebecca Overare on 4/23/20.
//  Copyright © 2020 Rebecca Overare. All rights reserved.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {
    
    
    let photoController = PhotoController()
    let themeHelper = ThemeHelper()


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photoController.photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as? PhotosCollectionViewCell else {fatalError()}
    
        cell.photo = photoController.photos[indexPath.row]
        return cell
        
    }
      // Mark: - Methods
    
        func setTheme() {
            if let currentTheme = themeHelper.themePreference {
                if currentTheme == "Dark" {
                    collectionView.backgroundColor = .darkGray
                } else if currentTheme == "Purple" {
                    collectionView.backgroundColor = .purple
                }
            }
        }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddPhotoShowSegue",
            let photoVC = segue.destination as? PhotoDetailViewController {
            photoVC.themeHelper = themeHelper
            photoVC.photoController = photoController
        } else if segue.identifier == "PhotoDetailShowSegue",
            let photoVC = segue.destination as? PhotoDetailViewController,
            let cell = sender as? PhotosCollectionViewCell,
            let indexPath = collectionView.indexPath(for: cell) {
        
            photoVC.photoController = photoController
            photoVC.themeHelper = themeHelper
            photoVC.photo = photoController.photos[indexPath.row]
            
        } else if segue.identifier == "ThemeSelectionModallySegue",
            let themeVC = segue.destination as? ThemeSelectionViewController {
            
            themeVC.themeHelper = themeHelper
        }
}
}
