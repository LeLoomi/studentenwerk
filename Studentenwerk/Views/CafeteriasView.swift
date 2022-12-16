//
//  MealsView.swift
//  Studentenwerk
//
//  Created by Eliah Lohr on 29.11.22.
//

import SwiftUI

struct CafeteriasView: View {
    @State var searchInput: String = ""

    var body: some View {
        VStack {
            NavigationView {
                List {
                    Section("Mensen") {}.headerProminence(.increased)
                        .padding(.bottom, -50)

                    HStack {
                        TextField(text: $searchInput) {
                            Text("\(Image(systemName: "magnifyingglass")) Mensa suchen")
                        }
                        Image(systemName: "arrow.up.arrow.down").foregroundColor(.accentColor)
                    }.padding(.top, 10)

                    NavigationLink {
                        FoodView(cafeteriaName: "Alte Mensa")
                    } label: {
                        CafeteriaTile(data: SWCafeteria(name: "Alte Mensa", imageURL: "https://static.studentenwerk-dresden.de/mensen/mensen-cafeterien-aussenansichten/alte-mensa.jpg", adressSimple: "Mommsenstraße 13", adressExtender: "01069 Dresden"), distance: 250, isPinned: true)
                    }

                    NavigationLink {
                        FoodView(cafeteriaName: "Mensa U-Boot")
                    } label: {
                        CafeteriaTile(data: SWCafeteria(name: "Mensa U-Boot", imageURL: "https://static.studentenwerk-dresden.de/mensen/mensen-cafeterien-aussenansichten/u-boot.jpg", adressSimple: "Hettnerstraße 3", adressExtender: "01069 Dresden"), distance: 310, isPinned: true)
                    }

                    NavigationLink {
                        FoodView(cafeteriaName: "Zeltschlösschen")
                    } label: {
                        CafeteriaTile(data: SWCafeteria(name: "Zeltschlösschen", imageURL: "https://static.studentenwerk-dresden.de/mensen/mensen-cafeterien-aussenansichten/zeltschloesschen.jpg", adressSimple: "Nürnberger Straße 55", adressExtender: "01187 Dresden"), distance: 370, isPinned: false)
                    }

                    NavigationLink {
                        FoodView(cafeteriaName: "Mensa Matrix")
                    } label: {
                        CafeteriaTile(data: SWCafeteria(name: "Mensa Matrix", imageURL: "https://static.studentenwerk-dresden.de/mensen/mensen-cafeterien-aussenansichten/mensa-matrix.jpg", adressSimple: "Reichenbachstr. 1", adressExtender: "01069 Dresden"), distance: 660, isPinned: false)
                    }

                    NavigationLink {
                        FoodView(cafeteriaName: "Siedepunkt")
                    } label: {
                        CafeteriaTile(data: SWCafeteria(name: "Siedepunkt", imageURL: "https://static.studentenwerk-dresden.de/mensen/mensen-cafeterien-aussenansichten/mensa-siedepunkt.jpg", adressSimple: "Zellescher Weg 17", adressExtender: "01069 Dresden"), distance: 660, isPinned: false)
                    }

                    NavigationLink {
                        FoodView(cafeteriaName: "Mensa Brühl")
                    } label: {
                        CafeteriaTile(data: SWCafeteria(name: "Mensa Brühl", imageURL: "https://static.studentenwerk-dresden.de/mensen/mensen-cafeterien-aussenansichten/mensa-bruehl.jpg", adressSimple: "Brühlsche Terrasse 1", adressExtender: "01067 Dresden"), distance: 660, isPinned: false)
                    }
                }
            }.foregroundColor(.primary).listStyle(.insetGrouped)
        }
    }
}

struct MealsView_Previews: PreviewProvider {
    static var previews: some View {
        CafeteriasView()
    }
}
