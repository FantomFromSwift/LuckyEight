//
//  ForegroundText1.swift
//  LuckyEight
//
//  Created by Иван Непорадный on 17.02.2025.
//

import Foundation
import SwiftUI

extension View {
    func gradientText1() -> some View {
        self.overlay(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 255/255, green: 204/255, blue: 0),
                    Color(red: 221/255, green: 33/255, blue: 224/255)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .mask(self)
        )
    }
}
