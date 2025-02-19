//
//  DailyTipsView.swift
//  LuckyEight
//
//  Created by Иван Непорадный on 18.02.2025.
//

import SwiftUI

struct DailyTipsView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack (alignment: .center){
                CustomHeaderView(title: "8 DAILY TIPS", fontSize: 46, onBack:{
                    print("Back")
                })
                Spacer()
                ScrollView(.horizontal, showsIndicators: false){
                    HStack (spacing: 5){
                        ForEach(sectionData) { item in
                            GeometryReader { geometry in
                                SectionView(section: item)
                                    .rotation3DEffect(Angle(degrees: geometry.frame(in: .global).minX - 30) / -20, axis: (x: 0, y: 10, z: 0))
                            }
                            .frame(width: 308, height: 273)
                        }
                    }
                    .padding(30)
                }
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    DailyTipsView()
}



struct SectionView: View {
    var section: Section
    var body: some View {
        VStack (spacing: 20){
            Text(section.title)
                .font(.custom("BakbakOne-Regular", size: 48))
                .gradientText()
            
            Text(section.discription)
                .font(.custom("Baloo2-VariableFont_wght", size: 32))
                .gradientText1()
                .glowBorder(color: .purple, lineWidth: 4)
            
            HStack{
                Button{
                    
                } label: {
                    section.image1
                }
                
                Spacer()
                
                ShareLink(item: section.discription) {
                    section.image2
                }
                
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
        }
        .frame(width: 308, height: 273)
        .background(section.color)
        .cornerRadius(31)
    }
}
