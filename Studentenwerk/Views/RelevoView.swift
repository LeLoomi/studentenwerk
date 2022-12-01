//
//  RelevoView.swift
//  Studentenwerk
//
//  Created by Eliah Lohr on 29.11.22.
//

import SwiftUI

struct RelevoView: View {
    var body: some View {
        List {
            Section("Relevo Mehrweg") {}.headerProminence(.increased)
                .padding(.bottom, -50)
            
            Section ("Derzeit geliehen \(Image(systemName: "tray.full.fill"))") {
                HStack {
                    Text("\(Image(systemName: "hockey.puck")) Claus")
                    Text("max. bis Fr. 16.12.").font(.footnote)
                }
                
                HStack {
                    Text("\(Image(systemName: "hockey.puck")) Maraike")
                    Text("max. bis Do. 22.12.").font(.footnote)
                }
            }
            
            Section("Ausleihe und Rückgabe \(Image(systemName: "qrcode"))") {
                Button {
                        print("Buttonpress.")
                    } label: {
                        Text("Ausleihen \(Image(systemName: "square.and.arrow.up"))")
                    }
                
                Button {
                        print("Buttonpress.")
                    } label: {
                        Text("Zurückgeben \(Image(systemName: "arrow.triangle.2.circlepath"))").foregroundColor(.indigo)
                    }
            }
            
            
            Section(content: {
                Text("Du hast bisher mit  \(Image(systemName: "leaf.fill")) \(Text("17").bold()) Relevos nachhaltig take-awayed!")
            }, header: {
            }, footer: {
                Image("relevo-banner")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 25)
                    .padding(.horizontal, 100)
                    .foregroundColor(Color("banner"))
                    .opacity(0.2)
            })
            
        }
    }
}

struct RelevoView_Previews: PreviewProvider {
    static var previews: some View {
        RelevoView()
    }
}
