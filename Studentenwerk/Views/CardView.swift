//
//  CardView.swift
//  Studentenwerk
//
//  Created by Eliah Lohr on 29.11.22.
//

import Charts
import SwiftUI

struct CardView: View {
    struct SpendingData: Identifiable {
        let id = UUID()
        let date: Date
        let cost: Double

        init(year: Int, month: Int, day: Int, cost: Double) {
            date = Calendar.current.date(from: .init(year: year, month: month, day: day)) ?? Date()
            self.cost = cost
        }
    }

    @State var enableContactless = true
    @State var enableAutoload = true
    @State var autoloadAddAmount = 10
    @State var autoloadTriggerAmount = 5
    @State var autoloadPaymentType = "PayPal"

    let exampleData = [SpendingData(year: 2022, month: 10, day: 30, cost: 0.0),
                       SpendingData(year: 2022, month: 10, day: 31, cost: 3.75),
                       SpendingData(year: 2022, month: 11, day: 1, cost: 4.0),
                       SpendingData(year: 2022, month: 11, day: 2, cost: 4.0),
                       SpendingData(year: 2022, month: 11, day: 3, cost: 3.75),
                       SpendingData(year: 2022, month: 11, day: 4, cost: 4.5),
                       SpendingData(year: 2022, month: 11, day: 7, cost: 2.35),
                       SpendingData(year: 2022, month: 11, day: 8, cost: 3.2),
                       SpendingData(year: 2022, month: 11, day: 9, cost: 4.0),
                       SpendingData(year: 2022, month: 11, day: 10, cost: 2.45),
                       SpendingData(year: 2022, month: 11, day: 11, cost: 4.3),
                       SpendingData(year: 2022, month: 11, day: 12, cost: 0)]

    var body: some View {
        List {
            // ÜBERSCHRIFT
            Section("Karte und Ausgaben") {}.headerProminence(.increased)
                .padding(.bottom, -40)

            // GUTHABEN
            Section("Guthaben \(Image(systemName: "creditcard"))") {
                Text("9,78 €")
            }

            // TÄGLICHE AUSGABEN
            Section {
                Chart {
                    ForEach(exampleData) { item in
                        BarMark(
                            x: .value("Month", item.date),
                            y: .value("Spending", item.cost)
                        )
                    }
                }
                .frame(width: 300, height: 130).offset(x: 7, y: 5)
            } header: {
                Text("Tägliche Ausgaben \(Image(systemName: "chart.bar.xaxis"))")
            } footer: {
                Text("In Euro und nur Karten-/Kontaktloszahlungen.")
            }

            // AUTOMATISCHES AUFLADEN
            Section {
                Toggle(isOn: $enableAutoload) {
                    Text("Automatisches Aufladen")
                }

                Picker("Aufladebetrag", selection: $autoloadAddAmount) {
                    Text("5,00 €").tag(5)
                    Text("10,00 €").tag(10)
                    Text("15,00 €").tag(15)
                    Text("20,00 €").tag(20)
                }.disabled(!enableAutoload)

                Picker("Aufladen bei", selection: $autoloadTriggerAmount) {
                    Text("5,00 €").tag(5)
                    Text("10,00 €").tag(10)
                }.disabled(!enableAutoload)

                Picker("Zahlungsart", selection: $autoloadPaymentType) {
                    Text("PayPal").tag("PayPal")
                    Text("Lastschrift").tag("Lastschrift")
                }.disabled(!enableAutoload)

            } header: {
                Text("Autoload \(Image(systemName: "repeat.circle"))")
            } footer: {
                Text("Autoload lädt deine Karte automatisch auf.")
            }

            // KONTAKLOSES BEZAHLEN
            Section {
                Toggle(isOn: $enableContactless) {
                    Text("Kontaklose Bezahlung")
                }
            } header: {
                Text("Kontaktloses Bezahlen \(Image(systemName: "wave.3.right.circle"))")
            } footer: {
                Text("Bezahle, indem du dein iPhone oder deine Apple Watch an der Kasse auf das Lesegerät legst.")
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
