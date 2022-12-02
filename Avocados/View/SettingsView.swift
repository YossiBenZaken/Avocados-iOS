//
//  SettingsView.swift
//  Avocados
//
//  Created by Yosef Ben Zaken on 02/12/2022.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - Header
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                // MARK: - Section #1
                Section {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notification")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                } header: {
                    Text("General Settings")
                }
                // MARK: - Section #2
                Section {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("Yossi Ben Zaken")
                        }
                        HStack {
                            Text("Designer").foregroundColor(.gray)
                            Spacer()
                            Text("Robert Petras")
                        }
                        HStack {
                            Text("Website").foregroundColor(.gray)
                            Spacer()
                            Text("google.co.il")
                        }
                        HStack {
                            Text("Version").foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message").foregroundColor(.gray)
                            Spacer()
                            Text("👍 Happy Coding!")
                        }
                    }
                } header: {
                    Text("Application")
                }

            }
            
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
