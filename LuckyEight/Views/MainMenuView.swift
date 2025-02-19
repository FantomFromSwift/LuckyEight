//
//  MainMenuView.swift
//  LuckyEight
//
//  Created by Иван Непорадный on 17.02.2025.
//

import SwiftUI

struct MainMenuView: View {
    
    var body: some View {
        NavigationStack{
            ZStack {
                BackgroundView()
                VStack {
                    Image("Group 8681")
                        .resizable()
                        .frame(width: 368 , height: 368)
                        .padding(.bottom, 30)
                        .overlay {
                            Text("Ask me something")
                                .font(.custom("Baloo2-VariableFont_wght", size: 30))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .gradientText1()
                                .frame(width: 176, height: 83)
                                .padding(.bottom,120)
                            
                        }
                    HStack{
                        Spacer()
                        Button {
                            
                        } label: {
                            Image("Rectangle 65")
                                .frame(width: 121, height: 71)
                                .overlay {
                                    Text("ASK")
                                        .font(.custom("BakbakOne-Regular", size: 40))
                                        .gradientText()
                                }
                        }
                        .padding(.leading, 30)
                        Spacer()
                        Button {
                            
                        } label: {
                            Image("Rectangle 64")
                                .frame(width: 177, height: 71)
                                .overlay {
                                    Text("SHAKE")
                                        .font(.custom("BakbakOne-Regular", size: 40))
                                        .gradientText()
                                }
                        }
                        .padding()
                        Spacer()
                        
                    }
                    .padding(.bottom, 40)
                    
                    HStack{
                        NavigationLink {
                            NumberGeneratorView()
                        } label: {
                            Image("Rectangle 4026")
                                .overlay {
                                    Text("Number Generator")
                                        .font(.custom("BakbakOne-Regular", size: 14))
                                        .multilineTextAlignment(.center)
                                        .foregroundStyle(.white)
                                }
                        }
                        .frame(width: 80, height: 80)
                        .padding(.horizontal)
                        
                        NavigationLink {
                            HabitTrackerView()
                        } label: {
                            Image("Rectangle 4026")
                                .overlay {
                                    Text("HABIT TRACKER")
                                        .font(.custom("BakbakOne-Regular", size: 15))
                                        .multilineTextAlignment(.center)
                                        .foregroundStyle(.white)
                                }
                        }
                        .frame(width: 80, height: 80)
                        .padding(.horizontal)
                    }
                    
                    HStack{
                        NavigationLink {
                            DailyTipsView()
                        } label: {
                            Image("Group 8682")
                            
                        }
                        .padding(.horizontal)
                        
                        NavigationLink {
                            HistoryStatisticsView()
                        } label: {
                            Image("Group 8700")
                            
                        }
                        .padding(.horizontal)
                        
                        NavigationLink {
                            SettingsView()
                        } label: {
                            Image("Group 8689-2")
                        }
                        .padding(.horizontal)
                        
                    }
                }
                
            }
        }
    }
}


#Preview {
    MainMenuView()
}
