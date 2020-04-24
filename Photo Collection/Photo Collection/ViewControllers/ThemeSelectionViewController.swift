//
//  ThemeSelectionViewController.swift
//  Photo Collection
//
//  Created by Rebecca Overare on 4/23/20.
//  Copyright © 2020 Rebecca Overare. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {

     var themeHelper: ThemeHelper?
   
 override func viewDidLoad() {
     super.viewDidLoad()
 }
    
    @IBAction func darkColorTheme(_ sender: UIButton) {
        themeHelper?.setThemePreferenceToDark()
        dismiss(animated: true, completion: nil)
}
    
    @IBAction func selectYourColorThemeHere(_ sender: UIButton) {
        themeHelper?.setThemePreferenceToPurple()
        dismiss(animated: true, completion: nil)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
