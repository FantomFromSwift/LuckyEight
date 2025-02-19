//
//  HistoryStatisticsView.swift
//  LuckyEight
//
//  Created by Иван Непорадный on 18.02.2025.
//

import SwiftUI

struct HistoryStatisticsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                CustomHeaderView(title: "HISTORY&STATISTICKS", fontSize: 26){}
                    .padding(.horizontal,20)
                    .padding(.top, -20)
                Spacer()
                ZStack {
                    Image("Group 8712")
                        .resizable()
                        .frame(width: 462, height: 747)
                    GeometryReader { proxy in
                        HStack {
                            
                            Button{
                                
                            } label: {
                                Text("Ball")
                                    .font(.custom("Baloo2-VariableFont_wght", size: 28))
                                    .foregroundStyle(.orange)
                                    .glowBorder(color: .purple, lineWidth: 5)
                                    .padding(.horizontal, 22)
                            }
                            
                            Spacer()
                            
                            Button{
                                
                            } label: {
                                Image("Rectangle 4059")
                                    .overlay(alignment: .center) {
                                        Text("Numbers")
                                            .font(.custom("Baloo2-VariableFont_wght", size: 28))
                                            .foregroundStyle(.orange)
                                            .glowBorder(color: .purple, lineWidth: 5)
                                    }
                            }
                            
                            Spacer()
                            
                            Button{
                                
                            } label: {
                                Image("Rectangle 4060")
                                    .overlay(alignment: .center) {
                                        Text("Habits")
                                            .font(.custom("Baloo2-VariableFont_wght", size: 28))
                                            .foregroundStyle(.orange)
                                            .glowBorder(color: .purple, lineWidth: 5)
                                    }
                            }
                        }
                    }
                    .frame(width: 400, height: 752)
                    
//                    Image("Group 8712")
//                        .frame(width: 440, height: 747)
//                        .overlay(alignment: .leading) {
//                            Text("Ball")
//                                .background(.black)
//                                .padding(.leading, 20)
//                            
//                        }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HistoryStatisticsView()
}
