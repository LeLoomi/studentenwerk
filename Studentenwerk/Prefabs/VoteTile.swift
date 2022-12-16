//
//  VoteTile.swift
//  Studentenwerk
//
//  Created by Eliah Lohr on 14.12.22.
//

import SwiftUI

struct VoteTile: View {
    let dishName: String
    let dishImageURL: String
    
    let hasMeat: Bool
    let hasFish: Bool
    let hasAlcohol: Bool
    let isVegan: Bool
    
    let voteIndex: Int   // -1 downvote, 0 unvoted, 1 upvoted
    var arrowUpColor: Color
    var arrowDownColor: Color
    
    init(dishName: String, dishImageURL: String, hasMeat: Bool, hasFish: Bool, hasAlcohol: Bool, isVegan: Bool, voteIndex: Int) {
        self.dishName = dishName
        self.dishImageURL = dishImageURL
        self.hasMeat = hasMeat
        self.hasFish = hasFish
        self.hasAlcohol = hasAlcohol
        self.isVegan = isVegan
        self.voteIndex = voteIndex
        
        self.arrowUpColor = Color.primary
        self.arrowDownColor = Color.primary
        
        if voteIndex == 1 {
            self.arrowUpColor = Color.orange
            self.arrowDownColor = Color.primary
        }
        
        if voteIndex == -1 {
            self.arrowUpColor = Color.primary
            self.arrowDownColor = Color.blue
        }
    }
    
    var body: some View {
        HStack {
            DishTile(dishName: dishName, dishImageURL: dishImageURL, hasMeat: hasMeat, hasFish: hasFish, hasAlcohol: hasAlcohol, isVegan: isVegan, price: "", showPrice: false)
            
            Spacer()
            
            // our vote arrows
            VStack {
                Image(systemName: "arrowtriangle.up.fill")
                    .foregroundColor(arrowUpColor)
                    .padding(.bottom,10)
                Image(systemName: "arrowtriangle.down.fill")
                    .foregroundColor(arrowDownColor)
            }.padding(10)
                .font(.system(size: 20))
        }
    }
}

struct VoteTile_Previews: PreviewProvider {
    static var previews: some View {
        VoteTile(dishName: "Pasta Napoli", dishImageURL: "https://ais.kochbar.de/kbrezept/560980_1177117/1500x1500/spaghetti-napoli-rezept-bild-nr-2.jpg", hasMeat: true, hasFish: false, hasAlcohol: false, isVegan: false, voteIndex: -1)
    }
}
