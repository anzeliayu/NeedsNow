//
//  PostCard.swift
//  NeedsNow
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct PostCard: View {
    let post: Post
    var body: some View {
        VStack(alignment: .leading) {
            Text(post.orgName)
                .font(.headline)
                .padding(.bottom)
            HStack {
                Label(post.city + ", " + post.state, systemImage: "mappin")
                    
                
            }
        }
        
            
    }
}

struct PostCard_Previews: PreviewProvider {
    static var post = Post.sampleData[0]
    static var previews: some View {
        PostCard(post: post)
            .background(Color.offWhite)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
