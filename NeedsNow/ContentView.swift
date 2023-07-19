//
//  ContentView.swift
//  NeedsNow
//
//  Created by Scholar on 7/17/23.
//

import SwiftUI

struct ContentView: View {
    @State private var navigateToForm: Bool = false
    @State private var navigateToCommunity: Bool = false
    
    var body: some View {
        NavigationStack {
            Color.lightGreen
             .ignoresSafeArea()
             .overlay (
                VStack {
                    Image("logo")
                    Text("Welcome to NeedsNow!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    
                    Button {
                        navigateToForm = true
                    } label: {
                        Text("New Form")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.eggplant)
                            .controlSize(
                    }
                    .navigationDestination(isPresented: $navigateToForm) {
                        FormView()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.tan)
                    .padding(.top, 30.0)
                    .padding()
                    
                    Button {
                        navigateToCommunity = true
                    } label: {
                        Text("Community")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.eggplant)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.brightPink)
                    .navigationDestination(isPresented: $navigateToCommunity) {
                        CommunityView(posts: Post.sampleData)
                    }
                    Spacer()
                    
                }
            )
        }
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
