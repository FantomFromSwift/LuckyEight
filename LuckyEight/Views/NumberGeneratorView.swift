//
//  NumberGeneratorView.swift
//  LuckyEight
//
//  Created by Иван Непорадный on 17.02.2025.
//

import SwiftUI

struct NumberGeneratorView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(spacing: 35){
                CustomHeaderView(title: "NUMBER GENERATOR", fontSize: 66) {
                    print("Back")
                }
                HStack{
                    Button{
                        
                    } label: {
                        Image("Rectangle 4022")
                            .overlay {
                                Text("MIN NUMBER")
                                    .font(.custom("BakbakOne-Regular", size: 20))
                                    .gradientText()
                            }
                    }
                    Spacer()
                    Button{
                        
                    } label: {
                        Image("Rectangle 4022")
                            .overlay {
                                Text("MAX NUMBER")
                                    .font(.custom("BakbakOne-Regular", size: 20))
                                    .gradientText()
                            }
                    }
                    
                }
                .padding(.horizontal, 20)
                
                Image("Ellipse 7")
                    .frame(width: 372, height: 204)
                
                Button{
                    
                } label: {
                    Image("Rectangle 67")
                        .frame(width: 287, height: 103)
                        .overlay {
                            Text("GENERATE")
                                .font(.custom("BakbakOne-Regular", size: 50))
                                .gradientText()
                        }
                }
                
                Button{
                    
                } label: {
                    Image("Rectangle 68")
                        .frame(width: 147, height: 71)
                        .overlay {
                            Text("SAVE")
                                .font(.custom("BakbakOne-Regular", size: 45))
                                .foregroundStyle(.white)
                        }
                }
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NumberGeneratorView()
}
