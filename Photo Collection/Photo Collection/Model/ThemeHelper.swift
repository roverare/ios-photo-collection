//
//  ThemeHelper.swift
//  Photo Collection
//
//  Created by Rebecca Overare on 4/23/20.
//  Copyright © 2020 Rebecca Overare. All rights reserved.
//

import Foundation

class ThemeHelper {
    
    let themePreferenceKey = "ThemePreferenceKey"
    
    var themePreference: String? {
        return UserDefaults.standard.string(forKey: themePreferenceKey)
    }
    
    
    func setThemePreferenceToDark() {
        UserDefaults.standard.setValue("Dark", forKey: themePreferenceKey)
    }
    
    func setThemePreferenceToYourColorHere() {
        UserDefaults.standard.setValue("Purple", forKey: themePreferenceKey)
    }
    

    
    init() {
        if themePreference == nil {
            return
        } else {
            setThemePreferenceToYourColorHere()
        }
    }
}
