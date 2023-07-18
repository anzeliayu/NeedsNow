//
//  ContentView.swift
//  NeedsNow
//
//  Created by Scholar on 7/17/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Color.lightGreen
            .ignoresSafeArea()
            .overlay (
                VStack {
                    
                    Button(action: {}){
                        Text("New Form")
                            .foregroundColor(Color.eggplant)
                        
                    }

                    .buttonStyle(.borderedProminent)
                    .tint(Color.tan)
                    
                    
                    Button(action: {}){
                        Text("Community")
                            .foregroundColor(Color.eggplant)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.brightPink)
                }
                    .padding()
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    static let lightGreen = Color("lightGreen")
    static let offWhite = Color("offWhite")
    static let brightPink = Color("brightPink")
    static let tan = Color("tan")
    static let eggplant = Color("eggplant")
}
