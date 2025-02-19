//
//  CustomHeader.swift
//  LuckyEight
//
//  Created by Иван Непорадный on 17.02.2025.
//

import SwiftUI

struct CustomHeaderView: View {
    var title: String
    var fontSize: CGFloat
    var onBack: () -> Void
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 5) {
            // Кнопка "назад"
            HStack {
                Button(action: {
                    dismiss()
                }) {
                    Image("Polygon 2") // Укажи свою картинку
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.leading)
                
                Spacer()
            }
            
            Text(title)
                .font(.custom("BakbakOne-Regular", size: fontSize))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, alignment: .center)
                .gradientText()
                .glowBorder(color: .yellow, lineWidth: 8)
        }
    }
}


struct CustomHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CustomHeaderView(title: "SETTINGS", fontSize: 59, onBack: {
            print("Back button tapped")
        }) // Здесь можно изменить условие
        .previewLayout(.sizeThatFits) // Подстраивает размер под контент
        .padding() // Добавляет отступы для наглядности
    }
}

