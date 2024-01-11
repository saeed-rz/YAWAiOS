//
//  UserDefaultsManager+Live.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 11/01/2024.
//

import Dependencies
import Foundation

extension UserDefaultsManager: DependencyKey {
    public static var liveValue: UserDefaultsManager = Self(
        userDefaults: UserDefaults.standard
    )
}
