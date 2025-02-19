//
//  TipsModel.swift
//  LuckyEight
//
//  Created by Иван Непорадный on 18.02.2025.
//

import Foundation
import SwiftUI

struct Section: Identifiable {
    var id = UUID()
    var title: String
    var discription: String
    var image1: Image
    var image2: Image
    var color: LinearGradient
   
}

let viewGradient =  LinearGradient(
    gradient: Gradient(colors: [
        Color(red: 228/255, green: 128/255, blue: 248/255),
        Color(red: 250/255, green: 225/255, blue: 255/255)
    ]),
    startPoint: .top,
    endPoint: .bottom)

let sectionData = [
    Section(title: "1 TIP", discription: "Smile more", image1: Image("лайк-01"), image2: Image("поділитися-01"), color: viewGradient),
    Section(title: "2 TIP", discription: "Go to the gym", image1: Image("лайк-01"), image2: Image("поділитися-01"), color: viewGradient),
    Section(title: "3 TIP", discription: "Read books", image1: Image("лайк-01"), image2: Image("поділитися-01"), color: viewGradient),
    Section(title: "4 TIP", discription: "Call your parents", image1: Image("лайк-01"), image2: Image("поділитися-01"), color: viewGradient),
    Section(title: "5 TIP", discription: "Help your friend", image1: Image("лайк-01"), image2: Image("поділитися-01"), color: viewGradient),
    Section(title: "6 TIP", discription: "Dont be rude", image1: Image("лайк-01"), image2: Image("поділитися-01"), color: viewGradient),
    Section(title: "7 TIP", discription: "Learn new things", image1: Image("лайк-01"), image2: Image("поділитися-01"), color: viewGradient),
    Section(title: "8 TIP", discription: "Kiss your partner", image1: Image("лайк-01"), image2: Image("поділитися-01"), color: viewGradient),
]

