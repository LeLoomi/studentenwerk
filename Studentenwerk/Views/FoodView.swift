//
//  FoodView.swift
//  Studentenwerk
//
//  Created by Eliah Lohr on 29.11.22.
//

import SwiftUI

struct FoodView: View {
    
    let cafeteriaName: String
    
    init(cafeteriaName: String) {
        self.cafeteriaName = cafeteriaName
    }
    
    var body: some View {
        List {
            Section(cafeteriaName) {}.headerProminence(.increased)
                .padding(.bottom, -50)
            
            DishTile(dishName: "Hackfleischröllchen aus Rind mit Tomatensoße", dishImageURL: "https://bilderspeiseplan.studentenwerk-dresden.de/m6/202212/277968.jpg", hasMeat: true, hasFish: false, hasAlcohol: false, isVegan: false, price: "2,92", showPrice: true)
            
            DishTile(dishName: "Falaffelbälllchen mit Tomatensoße", dishImageURL: "https://bilderspeiseplan.studentenwerk-dresden.de/m6/202212/277637.jpg", hasMeat: false, hasFish: false, hasAlcohol: false, isVegan: true, price: "2,35", showPrice: true)
            
            DishTile(dishName: "Hähnchenbrustfilet in Lebkuchenkruste, dazu Couscous", dishImageURL: "https://bilderspeiseplan.studentenwerk-dresden.de/m5/202212/277725.jpg", hasMeat: true, hasFish: false, hasAlcohol: false, isVegan: false, price: "3,59", showPrice: true)
            
            DishTile(dishName: "Schweinegeschnetzeltes in feiner Dijonsenfsoße, dazu Erbsen und Reis", dishImageURL: "https://bilderspeiseplan.studentenwerk-dresden.de/m5/202212/277724.jpg", hasMeat: true, hasFish: false, hasAlcohol: true, isVegan: false, price: "2,35", showPrice: true)
            
            DishTile(dishName: "Schweinegeschnetzeltes in feiner Dijonsenfsoße, dazu Erbsen und Reis", dishImageURL: "https://thumbs.dreamstime.com/b/spaghetti-bolognese-white-14995278.jpg", hasMeat: true, hasFish: false, hasAlcohol: true, isVegan: false, price: "2,35", showPrice: true)
        }.listStyle(.insetGrouped)
    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView(cafeteriaName: "Alte Mensa")
    }
}
