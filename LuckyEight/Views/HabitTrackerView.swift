//
//  HabitTrackerView.swift
//  LuckyEight
//
//  Created by Иван Непорадный on 17.02.2025.
//

import SwiftUI

struct HabitTrackerView: View {
    
//    @StateObject var viewModel = HabitViewModel()
//    
//    @State private var newHabitTitle: String = ""
//    
    @State private var isAddingNewHabit: Bool = false  // Состояние для отображения поля ввода
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                CustomHeaderView(title: "HABIT TRACKER", fontSize: 26, onBack: {
                    print("Back")
                })
                
                ExtractedView()
                
                Button{
                    isAddingNewHabit.toggle()
                } label: {
                    Image("Rectangle 4030")
                        .frame(width: 149, height: 69)
                        .overlay {
                            Text(isAddingNewHabit ? "CANCEL" : "ADD")
                                .foregroundColor(.white)
                        }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
  
}

#Preview {
    HabitTrackerView()
}

struct ExtractedView: View {
    @State private var isAddingNewHabit: Bool = false
    @State private var newHabitTitle: String = ""
    @StateObject var viewModel = HabitViewModel()
    var body: some View {
        VStack(spacing: 30){
            
            
            ForEach(viewModel.habits) { habit in
                HStack{
                    
                    Circle()
                        .frame(width: 8, height: 8)
                        .gradientText1()
                        .glowBorder(color: .purple, lineWidth: 6)
                        .padding(.horizontal, 10)
                    
                    Text(habit.title)
                        .font(.custom("Baloo2-VariableFont_wght", size: 32))
                        .gradientText1()
                        .glowBorder(color: .purple, lineWidth: 6)
                    
                    Spacer()
                    
                    Button{
                        viewModel.toggleHabitCompletion(habitID: habit.id, date: Date())
                    } label: {
                        Image(habit.isCompleted[viewModel.formatDate(Date())] == true ? "Vector 2" : "Group 8703")
                    }
                }
                .padding(.horizontal, 30)
            }
            
            // Поле для ввода новой привычки, если оно активно
            if isAddingNewHabit {
                HStack {
                    TextField("Enter new habit", text: $newHabitTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Button("Save") {
                        if !newHabitTitle.isEmpty {
                            viewModel.addHabit(title: newHabitTitle)
                            newHabitTitle = ""  // Очистить поле
                            isAddingNewHabit = false  // Скрыть поле ввода
                        }
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
                }
            }
        }
        .frame(width: 393, height: 601)
        .background(viewGrad)
        .cornerRadius(31)
    }
    
    let viewGrad = LinearGradient(
        gradient: Gradient(colors: [
            Color(red: 228/255, green: 128/255, blue: 248/255),
            Color(red: 250/255, green: 225/255, blue: 255/255)
        ]),
        startPoint: .top,
        endPoint: .bottom)
}
