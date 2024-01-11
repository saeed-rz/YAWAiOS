//
//  UserDefaultsManager+Test.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 10/01/2024.
//

import Dependencies
import Foundation

extension UserDefaultsManager: TestDependencyKey {
    public static var testValue: UserDefaultsManager = Self(
        userDefaults: UserDefaults.init(suiteName: UUID().uuidString)!
    )

    public static var previewValue: UserDefaultsManager = Self(
        userDefaults: UserDefaults.init(suiteName: UUID().uuidString)!
    )
}
