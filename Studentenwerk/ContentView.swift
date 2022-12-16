//
//  ContentView.swift
//  Studentenwerk
//
//  Created by Eliah Lohr on 29.11.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CafeteriasView()
                .tabItem {
                    VStack {
                        Image(systemName: "takeoutbag.and.cup.and.straw")
                        Text("Speiseplan")
                    }
                }

            RelevoView()
                .tabItem {
                    Label("Relevo", systemImage: "leaf.fill")
                }

            VoteView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.bubble.fill")
                        Text("#VoteMensa")
                    }
                }

            CardView()
                .tabItem {
                    VStack {
                        Image(systemName: "creditcard")
                        Text("Mensakarte")
                    }
                }

            SettingsView()
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                        Text("Einstellungen")
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
