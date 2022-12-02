//
//  HeaderModel.swift
//  Avocados
//
//  Created by Yosef Ben Zaken on 02/12/2022.
//

import Foundation

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
