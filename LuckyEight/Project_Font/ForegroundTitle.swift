//
//  ForegroundTitle.swift
//  LuckyEight
//
//  Created by Иван Непорадный on 17.02.2025.
//

import Foundation

import SwiftUI

extension View {
    func gradientText() -> some View {
        self.overlay(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 176/255, green: 0, blue: 211/255),
                    Color(red: 91/255, green: 0, blue: 109/255)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .mask(self)
        )
    }
}
