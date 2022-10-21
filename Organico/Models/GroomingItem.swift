//
//  MensGroomingModel.swift
//  Organico
//
//  Created by Peter McGowan on 12/10/2022.
//

import Foundation

struct GroomingItem : Identifiable, Codable{
    let id: Int
    let title: String
    let productImage: String
    let price: Double
}
