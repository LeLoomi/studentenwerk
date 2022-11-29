//
//  SWData.swift
//  Studentenwerk
//
//  Created by Eliah Lohr on 29.11.22.
//

import Foundation

struct SWCafeteria {
    let name:String
    let imageURL:URL
    let adressSimple:String
    let adressExtender:String
    
    init(name:String, imageURL:String, adressSimple:String, adressExtender:String) {
        self.name = name
        self.imageURL = URL(string: imageURL)!
        self.adressSimple = adressSimple
        self.adressExtender = adressExtender
    }
}

//Needs upgrade to support ingredient flags!
struct SWDish {
    let name:String
    let imageURL:URL
    let priceStudent:Float
    let priceAssociated:Float
    let priceGuest:Float
    
    init(name: String, imageURL: String, priceStudent: Float, priceAssociated: Float, priceGuest: Float) {
        self.name = name
        self.imageURL = URL(string: imageURL)!
        self.priceStudent = priceStudent
        self.priceAssociated = priceAssociated
        self.priceGuest = priceGuest
    }
}
