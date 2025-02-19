//
//  ThemeManager.swift
//  LuckyEight
//
//  Created by Иван Непорадный on 17.02.2025.
//

//import Foundation
//
//import SwiftUI
//
//class ThemeManager: ObservableObject {
//    @AppStorage("isDarkMode") private var isDarkMode: Bool = true {
//        didSet { objectWillChange.send() }
//    }
//    
//    var currentColorScheme: ColorScheme? {
//        isDarkMode ? .dark : .light
//    }
//    var isDarkModeEnabled: Bool {  // Добавляем публичное свойство для чтения
//        isDarkMode
//    }
//    
//    func toggleTheme() {
//        isDarkMode.toggle()
//    }
//}
