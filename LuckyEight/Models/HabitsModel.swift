//
//  HabitsModel.swift
//  LuckyEight
//
//  Created by Иван Непорадный on 19.02.2025.
//

import Foundation

struct HabitsModel: Identifiable, Codable {
    var id: UUID
    var title: String
    var isCompleted: [String : Bool]
    
    init(id: UUID = UUID(), title: String, isCompleted: [String: Bool] = [:]) {
            self.id = id
            self.title = title
            self.isCompleted = isCompleted
        }

}
