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
            
            Section ("Derzeit geliehen") {
                HStack {
                    Text("\(Image(systemName: "hockey.puck")) Claus")
                    Text("max. bis Fr. 16.12.").font(.footnote)
                }
                
                HStack {
                    Text("\(Image(systemName: "hockey.puck")) Maraike")
                    Text("max. bis Do. 22.12.").font(.footnote)
                }
                
                Button {
                        print("Buttonpress.")
                    } label: {
                        Text("Ausleihen")
                    }
                
                Button {
                        print("Buttonpress.")
                    } label: {
                        Text("Zurückgeben").foregroundColor(.indigo)
                    }
            }
            
            Section(content: {
                Text("Bisher mit  \(Image(systemName: "leaf.fill")) \(Text("17").bold()) Relevos nachhaltig take-awayed!")
            }, header: {
                Text("Zurückgegeben")
            }, footer: {
                Image("relevo-banner")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 25)
                    .padding(.horizontal, 100)
                    .foregroundColor(.gray)
                    .opacity(0.25)
            })
            
        }
    }
}

struct RelevoView_Previews: PreviewProvider {
    static var previews: some View {
        RelevoView()
    }
}
