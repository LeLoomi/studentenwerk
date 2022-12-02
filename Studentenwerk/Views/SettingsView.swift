//
//  SettingsView.swift
//  Studentenwerk
//
//  Created by Eliah Lohr on 29.11.22.
//

import SwiftUI

struct SettingsView: View {
    @State var usernameInput = ""
    @State var passwordInput = ""

    var body: some View {
        List {
            Section("Einstellungen") {}.headerProminence(.increased).padding(.bottom, -50)

            Section {
                HStack {
                    Image(systemName: "numbersign")
                    TextField(text: $usernameInput) {
                        Text("Kartennummer")
                    }
                }

                HStack {
                    Image(systemName: "key.horizontal").padding(.leading, -3).padding(.trailing, -2)
                    SecureField(text: $passwordInput) {
                        Text("Kennwort")
                    }
                    Spacer()
                    Image(systemName: "checkmark.circle").foregroundColor(.green)
                }
            } header: {
                Text("Kartendaten \(Image(systemName: "creditcard"))")
            } footer: {
                Text("Dein Login werden lokal gespeichert.")
            }

            Section {
                HStack {
                    Text("Lastschrift")
                    Spacer()
                    Text("zum hinzufügen tippen").foregroundColor(.gray).italic().font(.footnote)
                    Image(systemName: "checkmark.circle").foregroundColor(.gray)
                }

                HStack {
                    Text("PayPal")
                    Spacer()
                    Text("zum entfernen tippen").foregroundColor(.gray).italic().font(.footnote)
                    Image(systemName: "checkmark.circle").foregroundColor(.green)
                }
            } header: {
                Text("Zahlungsarten \(Image(systemName: "eurosign"))")
            } footer: {
                Text("Deine Daten werden sicher lokal gespeichert.")
            }

            // Logo footer
            Section {} header: {} footer: {
                VStack {
                    Image("swdd-banner")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .padding(.top, 10)
                        .padding(.horizontal, 70)
                        .foregroundColor(Color("banner"))
                        .opacity(0.2)
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
