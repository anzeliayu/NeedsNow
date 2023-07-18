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
            List(posts, id: \.orgName) { post in
                PostCard(post: post)
                    .listRowBackground(Color.lightGreen)
                    
                
                
            }
        }
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView(posts: Post.sampleData )
    }
}
