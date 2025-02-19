//
//  HabitsManager.swift
//  LuckyEight
//
//  Created by Иван Непорадный on 19.02.2025.
//

import Foundation

import SwiftUI

class HabitViewModel: ObservableObject {
    
    @Published var habits: [HabitsModel] = [] {
        didSet {
            saveHabits()
        }
    }

    private let habitsKey = "savedHabits"

    init() {
        loadHabits()
    }
    
    /// Проверяет, сколько привычек выполнено сегодня
    func completedHabitsToday() -> Int {
        let todayKey = formatDate(Date())
        return habits.filter { $0.isCompleted[todayKey] == true }.count
    }
    /// Проверяет, выполнена ли привычка сегодня
//    func isHabitCompletedToday(_ habit: HabitsModel) -> Bool {
//        let todayKey = formatDate(Date())
//        return habit.isCompleted[todayKey] == true
//    }

    
    /// Добавить новую привычку
    func addHabit(title: String) {
        let newHabit = HabitsModel(title: title)
        habits.append(newHabit)
    }
    
    /// Отметить выполнение привычки
    /// Отмечает привычку выполненной, если не превышен лимит
     func toggleHabitCompletion(habitID: UUID, date: Date) {
         let todayKey = formatDate(date)
         
         if let index = habits.firstIndex(where: { $0.id == habitID }) {
             // Если привычка уже выполнена — снимаем отметку
             if habits[index].isCompleted[todayKey] == true {
                 habits[index].isCompleted[todayKey] = false
             } else {
                 // Проверяем, не превышен ли лимит 8 привычек в день
                 if completedHabitsToday() < 8 {
                     habits[index].isCompleted[todayKey] = true
                 } else {
                     print("Достигнут лимит 8 привычек в день!")
                 }
             }
             objectWillChange.send()
         }
     }
 

    /// Получить данные для графика (количество выполненных привычек за неделю)
    func getProgressData(for weekStartDate: Date) -> [Int] {
        var progressData: [Int] = Array(repeating: 0, count: 7)

        for i in 0..<7 {
            let date = Calendar.current.date(byAdding: .day, value: i, to: weekStartDate)!
            let dateKey = formatDate(date)

            let completedCount = habits.filter { $0.isCompleted[dateKey] == true }.count
            progressData[i] = completedCount
        }

        return progressData
    }

    /// Сохранение данных в `UserDefaults`
    private func saveHabits() {
        if let encoded = try? JSONEncoder().encode(habits) {
            UserDefaults.standard.set(encoded, forKey: habitsKey)
        }
    }

    /// Загрузка данных из `UserDefaults`
    private func loadHabits() {
        if let savedData = UserDefaults.standard.data(forKey: habitsKey),
           let decoded = try? JSONDecoder().decode([HabitsModel].self, from: savedData) {
            habits = decoded
        }
    }

    /// Форматирование даты в `"yyyy-MM-dd"`
     func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: date)
    }
}
