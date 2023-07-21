//
//  PostsView.swift
//  NeedsNow
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct CommunityView: View {
    @Binding var posts: [Post]
    
    var body: some View {
        NavigationStack {

            List(posts) { post in
                NavigationLink(destination: expandedView(card: post)) {
                    PostCard(post: post)
                }
                .listRowBackground(Color.offWhite)
                
            }
            
            .background(Color.lightGreen)
            .scrollContentBackground(.hidden)
         
        }
        
        .toolbar{
            ToolbarItemGroup(placement: .status) {
                NavigationLink(destination: ContentView()) {
                    Text("Home").foregroundColor(.eggplant)
                }
                NavigationLink(destination: FormView(newPost: Post(orgName: "", streetAddress: "", city: "", state: "", items: [""], neededBy: "", contact: "", other: ""))) {
                    Text("New Post").foregroundColor(.eggplant)
                }
                NavigationLink(destination: CommunityView(posts: .constant(Post.sampleData))){
                    Text("Community").foregroundColor(.eggplant)
                }
            }

        }
        
        .navigationBarBackButtonHidden(true)
        

     
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView(posts: .constant(Post.sampleData))
    }
}

