//
//  UIColor.swift
//  PickerWithList_ScrollView
//
//  Created by Deepak Carpenter on 19/07/20.
//

import SwiftUI
extension Color {
    static var random: Color {
        return Color(red: .random(in: 0...1),
                     green: .random(in: 0...1),
                     blue: .random(in: 0...1),
                     opacity: 1.0)
    }
}
