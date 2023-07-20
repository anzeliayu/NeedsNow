//
//  expandedView.swift
//  NeedsNow
//
//  Created by scholar on 7/19/23.
//

import SwiftUI

struct expandedView: View {
    
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
                
                
                Button("Fulfill"){
                    
                    // get id of this post
                    // find the index of that post from the posts list (sampleData)
                    // remove the post from sampleData
                
                    let postIndex = findPostIndex(post: card)
                    Post.sampleData.remove(at: postIndex)
                    
                }
                .font(.title2)
                .foregroundColor(.eggplant)
                .fontWeight(.semibold)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
        }
        .background(Color.lightGreen)
        
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
