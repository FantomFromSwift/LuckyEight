//
//  BackgroundView.swift
//  LuckyEight
//
//  Created by Иван Непорадный on 17.02.2025.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Image("background")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
