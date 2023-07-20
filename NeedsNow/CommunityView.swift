//
//  PostsView.swift
//  NeedsNow
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct CommunityView: View {
    @State var posts: [Post]
    
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
            NavigationLink(destination: ContentView()) {
                Text("Home")
            }
            NavigationLink(destination: FormView(newPost: Post(orgName: "", streetAddress: "", city: "", state: "", items: [""], neededBy: "", contact: "", other: ""))) {
                Text("Form")
            }
            NavigationLink(destination: CommunityView(posts: Post.sampleData)){
                Text("Community")
            }
                           
        }

     
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView(posts: Post.sampleData )
    }
}

