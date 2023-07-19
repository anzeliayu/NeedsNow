//
//  expandedView.swift
//  NeedsNow
//
//  Created by scholar on 7/19/23.
//

import SwiftUI

struct expandedView: View {
    
    let card: Post
    
    
    var body: some View {
       
            
            
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
                    Text(card.item + ": " + String(card.quantity))
                    
                }
                
                .listRowBackground((Color.offWhite))
                
                
                
            }
        
            .background(Color.lightGreen)
            
            .scrollContentBackground(.hidden)
        
        
    }
    
}








struct expandedView_Previews: PreviewProvider {
    static var previews: some View {
        expandedView(card: Post.sampleData[0])
    }
}
