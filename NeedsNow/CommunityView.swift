//
//  PostsView.swift
//  NeedsNow
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct CommunityView: View {
    let posts: [Post]
    
    var body: some View {
        NavigationStack {
            List(posts) { post in
                NavigationLink(destination: expandedView(card: post)){
                    PostCard(post: post)
                }
                .listRowBackground(Color.offWhite)
                
            }
            .background(Color.lightGreen)
            .scrollContentBackground(.hidden)
         
        }
     
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView(posts: Post.sampleData )
    }
}

