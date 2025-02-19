//
//  SettingsView.swift
//  LuckyEight
//
//  Created by Иван Непорадный on 17.02.2025.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.colorScheme) private var userColorScheme
    @State private var isOn: Bool = false
    @State private var viewColorScheme: ColorScheme = .light
    
    var body: some View {
        ZStack {
            BackgroundView()
            GeometryReader { proxy in
                let safeAreaTop = proxy.safeAreaInsets.top
                
                VStack {
                    CustomHeaderView(title: "SETTINGS", fontSize: 66, onBack: {
                        print("Back")
                    })
                    .padding(.top, safeAreaTop)
                    
                    HStack {
                        Text("NOTIFICATION")
                            .font(.custom("Baloo2-VariableFont_wght", size: 40))
                            .gradientText1()
                            .glowBorder(color: .pink, lineWidth: 2)
                            .frame(width: 282, height: 63)
                        
                        Image("Group 8664")
                            .frame(width: 62, height: 31)
                    }
                    .padding(.top, 20)
                    
                    HStack{
                        Text("THEME")
                            .font(.custom("Baloo2-VariableFont_wght", size: 40))
                            .gradientText1()
                            .glowBorder(color: .pink, lineWidth: 2)
                            .frame(width: 150, height: 63)
                        
                        Image(isOn ? "Group 8668" : "Group 8667")
                            .frame(width: 62, height: 31)
                            .onTapGesture {
                                // Переключаем состояние isOn при нажатии на картинку
                                isOn.toggle()
                                // Обновляем цветовую схему в зависимости от состояния isOn
                                viewColorScheme = isOn ? .light : .dark
                            }
                    }
                    
                    Image("Group 8696")
                }
            }
            
        }
        .preferredColorScheme(viewColorScheme)
        .onAppear(){
            switchAppearance()
        }.onChange(of: isOn,  perform: { newValue in
            if newValue == false {
                viewColorScheme = .dark
                return
            }
            
            viewColorScheme = .light
        })
        //        .environment(\.colorSсheme, scheme)
        .navigationBarBackButtonHidden(true)
    }
    func switchAppearance() {
        viewColorScheme = userColorScheme
        
        if userColorScheme == .dark {
            isOn = true
            return
        }
        isOn = false
    }
}

#Preview {
    SettingsView()
    
}

                

