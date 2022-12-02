//
//  DishesView.swift
//  Avocados
//
//  Created by Yosef Ben Zaken on 02/12/2022.
//

import SwiftUI

struct Col: Identifiable {
    var id = UUID()
    var image: String
    var text: String
}

struct DishesView: View {
    var col1: [Col] = [
        Col(image: "icon-toasts", text: "Toasts"),
        Col(image: "icon-tacos", text: "Tacos"),
        Col(image: "icon-salads", text: "Toasts"),
        Col(image: "icon-halfavo", text: "Spreads")
    ]
    var col3: [Col] = [
        Col(image: "icon-guacamole", text: "Guacamole"),
        Col(image: "icon-sandwiches", text: "Sandwich"),
        Col(image: "icon-soup", text: "Soup"),
        Col(image: "icon-smoothies", text: "Smoothie")
    ]
    var body: some View {
        HStack(alignment: .center, spacing: 4.0) {
            VStack(alignment: .leading, spacing: 4.0) {
                ForEach(col1) {item in
                    HStack {
                        Image(item.image)
                            .resizable()
                            .modifier(IconModifier())
                        Spacer()
                        Text(item.text)
                    }
                    if(item.text != "Spreads") {
                        Divider()
                    }
                }
            }
            VStack(alignment: .center, spacing: 16) {
                HStack{
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                    
                }
            }
            
            VStack(alignment: .trailing, spacing: 4.0) {
                ForEach(col3) {item in
                    HStack {
                        Image(item.image)
                            .resizable()
                            .modifier(IconModifier())
                        Spacer()
                        Text(item.text)
                    }
                    if(item.text != "Smoothie") {
                        Divider()
                    }
                }
            }
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
    }
}
