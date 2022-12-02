//
//  FactModel.swift
//  Avocados
//
//  Created by Yosef Ben Zaken on 02/12/2022.
//

import Foundation

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
