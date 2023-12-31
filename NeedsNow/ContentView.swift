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
                        .offset(y: 60)
                        .padding()
                        .padding(.top, 24.0)
                    Text("Welcome to NeedsNow!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding()
                        .offset(y:10)
                        .foregroundColor(.eggplant)
                    
                    Button {
                        
                        navigateToForm = true
                    } label: {
                        Text("New Form")
                            .fontWeight(.bold)
                            .foregroundColor(Color.eggplant)
                    }
                    .navigationDestination(isPresented: $navigateToForm) {
                        FormView(newPost: Post(orgName: "", streetAddress: "", city: "", state: "", items: [String](), neededBy: "", contact: "", other: ""))
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.tan)
                    .padding(.top, 5.0)
                    .padding()
                    .controlSize(.large)
                    .navigationBarBackButtonHidden(true)
                    
                    Button {
                        navigateToCommunity = true
                    } label: {
                        Text("Community")
                            .fontWeight(.bold)
                            .foregroundColor(Color.eggplant)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.brightPink)
                    .controlSize(.large)
                    .navigationDestination(isPresented: $navigateToCommunity) {
                        CommunityView(posts: .constant(Post.sampleData))
                    }
                    .navigationBarBackButtonHidden(true)
                    Spacer()
                    
                    
                }
            ) /*
             .toolbar{
                 ToolbarItemGroup(placement: .status) {
                     NavigationLink(destination: ContentView()) {
                         Image(systemName: "house.fill" ).foregroundColor(.eggplant)
                     }
                     NavigationLink(destination: FormView(newPost: Post(orgName: "", streetAddress: "", city: "", state: "", items: [""], neededBy: "", contact: "", other: ""))) {
                         Text("Form").foregroundColor(.eggplant)
                     }
                     NavigationLink(destination: CommunityView(posts: .constant(Post.sampleData))){
                         Text("Community").foregroundColor(.eggplant)
                     }
                 }
                 
             }
             .navigationBarBackButtonHidden(true)
             
            */
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
