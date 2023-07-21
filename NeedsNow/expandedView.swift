//
//  expandedView.swift
//  NeedsNow
//
//  Created by scholar on 7/19/23.
//

import SwiftUI

struct expandedView: View {
    @State var navigateToHome = false
    let card: Post
    @State private var sliderVal = 0.0
    var body: some View {
        ZStack {
            
            VStack {
                
                List {
                    Section(header: Text("Information")){
                        Text(card.orgName)
                        Text("Address: " + card.streetAddress)
                        Text("Needed By: " + card.neededBy)
                        Text("Contact: " + card.contact)
                        Text("Other Info: " + card.other)
                    }
                    .listRowBackground((Color.offWhite))
                    
                    Section(header: Text("Items Info")) {
                        ForEach(card.items, id: \.self) { item in
                            Text(item)
                            
                        }
                        /*Slider(
                         value: $sliderVal,
                         in: 0...Double(card.quantity),
                         step: 1
                         )*/
                        
                    }
                    .listRowBackground((Color.offWhite))
                    
                }
                .background(Color.lightGreen)
                .scrollContentBackground(.hidden)
                
                
                Button(){
                    navigateToHome = true
                    
                    let postIndex = findPostIndex(post: card)
                    print(postIndex)
                    Post.sampleData.remove(at: postIndex)
                    
                    
                } label: {
                    Text("Fulfill")
                    
                }
                .navigationDestination(isPresented: $navigateToHome)
                {
                    ContentView()
                    
                }
                .font(.title2)
                .foregroundColor(.eggplant)
                .fontWeight(.semibold)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                /*
                 
                 Button {
                     navigateToForm = true
                     navigateToForm = true
                 } label: {
                     Text("New Form")
                         .fontWeight(.bold)
                         .foregroundColor(Color.eggplant)
                 }
                 .navigationDestination(isPresented: $navigateToForm) {
                     FormView(newPost: Post(orgName: "", streetAddress: "", city: "", state: "", items: [String](), neededBy: "", contact: "", other: ""))
                 }*/
            }
        }
        
        .background(Color.lightGreen)
        
        .toolbar{
            ToolbarItemGroup(placement: .status) {
                NavigationLink(destination: ContentView()) {
                    Image(systemName: "house.fill")
                }
                NavigationLink(destination: FormView(newPost: Post(orgName: "", streetAddress: "", city: "", state: "", items: [""], neededBy: "", contact: "", other: ""))) {
                    Text("Form")
                }
                NavigationLink(destination: CommunityView(posts: .constant(Post.sampleData))){
                    Text("Community")
                }
            }

                    
        }
        

        
    }
    
}



func findPostIndex(post: Post) -> Int {
    
    for n in (0..<Post.sampleData.count) {
        if Post.sampleData[n].id == post.id {
            return n
        }
        
    }
    return -1
    
}




struct expandedView_Previews: PreviewProvider {
    static var previews: some View {
        expandedView(card: Post.sampleData[0])
    }
}
