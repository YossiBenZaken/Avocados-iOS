//
//  RipeningModel.swift
//  Avocados
//
//  Created by Yosef Ben Zaken on 02/12/2022.
//

import SwiftUI

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
