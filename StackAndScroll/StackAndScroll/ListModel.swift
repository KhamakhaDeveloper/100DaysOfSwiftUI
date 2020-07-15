//
//  ListModel.swift
//  StackAndScroll
//
//  Created by Deepak Carpenter on 16/07/20.
//

import SwiftUI

struct ListModel: Identifiable, Hashable {
    let id: Int
    let title: String
    let subtitle: String
    let image: String
    let opacity: Double
    
    static func dummyData() -> [ListModel] {
        return [ListModel(id: 0, title: "Man United F.C.", subtitle: "Ole Gunnar", image: "manu", opacity: 1.0),
                ListModel(id: 1, title: "FC Barcelona", subtitle: " Quique Setién", image: "barca", opacity: 0.9),
                ListModel(id: 2, title: "Juventus F.C.", subtitle: "Maurizio Sarri", image: "juv", opacity: 0.8),
                ListModel(id: 3, title: "Arsenal F.C.", subtitle: "Mikel Arteta", image: "ars", opacity: 0.7),
                ListModel(id: 4, title: "Real Madrid C.F.", subtitle: "Zinedine Zidane", image: "rm", opacity: 0.6),
                ListModel(id: 5, title: "Liverpool F.C.", subtitle: "Jürgen Klopp", image: "lp", opacity: 0.5),
                ListModel(id: 6, title: "Chelsea F.C.", subtitle: "Frank Lampard", image: "cl", opacity: 0.4),
                ListModel(id: 7, title: "Manchester City F.C.", subtitle: "Pep Guardiola", image: "manc", opacity: 0.3),
                ListModel(id: 8, title: "FC Bayern Munich", subtitle: "Hans-Dieter Flick", image: "bm", opacity: 0.2),
                ListModel(id: 9, title: "Paris Saint-Germain F.C.", subtitle: "Thomas Tuchel", image: "par", opacity: 0.0)
        ]
    }
}
