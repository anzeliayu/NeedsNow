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
                    Text(String(format: ".0f", sliderVal))
                }
                .listRowBackground((Color.offWhite))
                
            }
            .background(Color.lightGreen)
            .scrollContentBackground(.hidden)
            
            
        }
        
    }
    
}








struct expandedView_Previews: PreviewProvider {
    static var previews: some View {
        expandedView(card: Post.sampleData[0])
    }
}
