//
//  DishTile.swift
//  Studentenwerk
//
//  Created by Eliah Lohr on 14.12.22.
//

import SwiftUI

struct DishTile: View {
    
    let dishName: String
    let dishImageURL: URL
    
    let hasMeat: Bool
    let hasFish: Bool
    let hasAlcohol: Bool
    let isVegan: Bool
    
    let price: String
    let showPrice: Bool
    
    init(dishName: String, dishImageURL: String, hasMeat: Bool, hasFish: Bool, hasAlcohol: Bool, isVegan: Bool, price: String, showPrice: Bool) {
        self.dishName = dishName
        self.dishImageURL = URL(string: dishImageURL)!
        self.hasMeat = hasMeat
        self.hasFish = hasFish
        self.hasAlcohol = hasAlcohol
        self.isVegan = isVegan
        self.price = price
        self.showPrice = showPrice
    }
    
    var body: some View {
        HStack {
            AsyncImage(url: dishImageURL) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(5)
            } placeholder: {
                ProgressView()
            }.frame(width: 90)
            
            VStack {
                HStack {
                    Text(dishName).font(.system(size: 15))
                    Spacer()
                }
                
                if showPrice {
                    HStack {
                        Text("\(price) €").font(.footnote).italic()
                        Spacer()
                    }.padding(.bottom, 1)
                }
                
                HStack {
                    if hasMeat { Image(systemName: "hare").font(.system(size: 10)) }
                    if hasFish { Image(systemName: "fish").font(.system(size: 10)) }
                    if hasAlcohol { Image(systemName: "wineglass").font(.system(size: 10)) }
                    if isVegan { Image(systemName: "carrot").font(.system(size: 10)) }
                    Spacer()
                }
            }.padding(.leading, 5)
        }
    }
}

struct DishTile_Previews: PreviewProvider {
    static var previews: some View {
        DishTile(dishName: "Currywurst mit Steakfries", dishImageURL: "https://bilderspeiseplan.studentenwerk-dresden.de/m32/202212/278283.jpg", hasMeat: true, hasFish: true, hasAlcohol: true, isVegan: true, price: "2,35", showPrice: true)
    }
}
