//
//  VoteView.swift
//  Studentenwerk
//
//  Created by Eliah Lohr on 29.11.22.
//

import SwiftUI

struct VoteView: View {
    var body: some View {
        List {
            Section {} header: {
                Text("#VoteMensa").headerProminence(.increased)
            } footer: { Text("Sag uns, was dir gut geschmecht hat und was nicht!") }
                .padding(.bottom, -20)

            
            VoteTile(dishName: "Currywurst und Steakfries", dishImageURL: "https://bilderspeiseplan.studentenwerk-dresden.de/m32/202212/278283.jpg", hasMeat: true, hasFish: false, hasAlcohol: false, isVegan: false, voteIndex: 1)
            VoteTile(dishName: "Türkische Linsenlaibchen mit Tomatenragout", dishImageURL: "https://bilderspeiseplan.studentenwerk-dresden.de/m32/202212/278282.jpg", hasMeat: false, hasFish: false, hasAlcohol: false, isVegan: true, voteIndex: 0)
            VoteTile(dishName: "Seelachs im Backteig mit Kartoffelpüree", dishImageURL: "https://bilderspeiseplan.studentenwerk-dresden.de/m7/202212/277878.jpg", hasMeat: false, hasFish: true, hasAlcohol: false, isVegan: false, voteIndex: -1)
        }
    }
}

struct VoteView_Previews: PreviewProvider {
    static var previews: some View {
        VoteView()
    }
}
