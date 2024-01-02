//
//  Alignment+Extension.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 02/01/2024.
//

import SwiftUI

extension HorizontalAlignment {
    private enum CountryTextAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.leading]
        }
    }

    static let countryTextAlignment = HorizontalAlignment(CountryTextAlignment.self)
}
