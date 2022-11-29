//
//  CafeteriaTile.swift
//  Studentenwerk
//
//  Created by Eliah Lohr on 29.11.22.
//

import SwiftUI

struct CafeteriaTile: View {
    
    let data:SWCafeteria
    let distance:Int
    let isPinned:Bool
    
    init(data:SWCafeteria, distance:Int, isPinned:Bool) {
        self.data = data
        self.distance = distance
        self.isPinned = isPinned
    }
    
    var body: some View {
        HStack {
            AsyncImage(url: data.imageURL) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(5)
            } placeholder: {
                ProgressView()
            }.frame(width: 120)
            
            VStack(alignment: .leading, content: {
                Text(data.name).font(.headline)
                Text(data.adressSimple).font(.caption2)
                Text(data.adressExtender).font(.caption2)
                Text("\(Image(systemName: "location.circle")) \(String(distance))m").font(.caption)
            })
        }.padding(.horizontal, 5)
            .padding(.vertical, 5)
            .cornerRadius(10)
            .overlay {
                if(isPinned) {
                    VStack {
                        HStack {
                            Image(systemName: "pin.fill").foregroundColor(.accentColor).shadow(radius: 10)
                            Spacer()
                        }
                        Spacer()
                    }
                }
            }
    }
}

struct CafeteriaTile_Previews: PreviewProvider {
    static var previews: some View {
        CafeteriaTile(data: SWCafeteria(name: "Alte Mensa", imageURL: "https://static.studentenwerk-dresden.de/mensen/mensen-cafeterien-aussenansichten/alte-mensa.jpg", adressSimple: "Mommsenstraße 13", adressExtender: "01069 Dresden"), distance: 340, isPinned: true)
    }
}
