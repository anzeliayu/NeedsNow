//
//  FormView.swift
//  NeedsNow
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct FormView: View {
    @State private var submitForm = false
    @State var testPost = Post.sampleData
    @State var newPost: Post
    @State var orgName = ""
    @State var streetAddress = ""
    @State var city = ""
    @State var state = ""
    
    @State var items = [""]
    @State var quantity = ""
    @State var neededBy = ""
    @State var contact = ""
    @State var other = ""
    
    @State private var navigateToHome = false
    @State var addItem = false
    var body: some View {
        
        ScrollView {
            ZStack{
                VStack(alignment: .leading, spacing:20){
                    HStack{
                        Spacer()
                            //.frame(width: 125.0, height: 100.0)
                        Text("New Post")
                            .padding(.top)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.eggplant)
                        Spacer()
                    }
                    //Org details
                    Group {
                        Button{
                            orgName = ""
                            streetAddress = ""
                            city = ""
                            state = ""
                            items = [""]
                            quantity = ""
                            neededBy = ""
                            contact = ""
                            other = ""
                        } label: {
                            Text("Clear Form")
                        }
                        .padding(.leading)
                        HStack{
                            TextField("Organization Name", text: $orgName)
                                .padding(.leading)
                                .frame(width: 320.0, height: 30.0)
                                .border(Color.eggplant, width: 1)
                                .background(Color.offWhite)
                        }
                        .padding(.leading)
                        .frame(height: 40.0)
                        HStack{
                            TextField("Street Address", text: $streetAddress)
                                .padding(.leading)
                                .frame(width: 320.0, height: 30.0)
                                .border(Color.eggplant, width: 1)
                                .background(Color.offWhite)
                        }
                        .padding(.leading)
                        .frame(height: 40.0)
                        //Address detail 2
                        HStack{
                            Group {
                                TextField("City", text: $city)
                                    .padding(.leading)
                                    .frame(width: 200.0, height: 30.0)
                                    .border(Color.eggplant, width: 1)
                                    .background(Color.offWhite)
                                    .padding(.leading)
                                    .frame(height: 40.0)
                                TextField("State", text: $state)
                                    .padding(.leading)
                                    .frame(width: 90.0, height: 30.0)
                                    .border(Color.eggplant, width: 1)
                                    .background(Color.offWhite)
                                    .padding()
                                    .frame(height: 40.0)
                            }
                        }
                            Group {
                                VStack {
                                    ForEach(items.indices, id: \.self) { index in
                                        
                                        TextField("Item needed, Quantity", text: $items[index])
                                            .padding(.leading)
                                            .frame(width: 320.0, height: 30.0)
                                            .border(Color.eggplant, width: 1)
                                            .background(Color.offWhite)
                                            .padding(.leading)
                                            .frame(height: 40.0)
                                        
                                        
                                        
                                    }
                                    
                                    Button(action: {
                                        items.append("")
                                    }) {
                                        Image(systemName: "plus.circle.fill")
                                    }
                                    //.disabled(the recent textfield var.isEmpty)
                                }
                                
                                
                                //quantity details
                                /*TextField("Quantity", text: $quantity)
                                    .padding(.leading)
                                    .frame(width: 100.0, height: 30.0)
                                    .border(Color.black, width: 1)
                                    .background(Color.offWhite)
                                    .padding(.leading)
                                    .frame(height: 40.0)*/
                            } 
                        
                        
    //                    var isTrue: Bool
    //                    isTrue = false
    //                    if isTrue == true {
    //                        HStack {
    //                            Text("Test")
    //                        }
    //                    }
                        
    //                    Button("More") {
    //                        isTrue = true
    //                    }
                     
                        HStack{
                            TextField("DD/MM/YYYY", text: $neededBy)
                                .padding(.leading)
                                .frame(width: 320.0, height: 30.0)
                                .border(Color.eggplant, width: 1)
                                .background(Color.offWhite)
                        }
                        .padding(.leading)
                        .frame(height: 40.0)
                        HStack{
                            TextField("Phone Number", text: $contact)
                                .padding(.leading)
                                .frame(width: 320.0, height: 30.0)
                                .border(Color.eggplant, width: 1)
                                .background(Color.offWhite)
                        }
                        .padding(.leading)
                        .frame(height: 40.0)
                        HStack{
                            TextField("Other Info", text: $other)
                                .padding(.leading)
                                .frame(width: 320.0, height: 90.0)
                                .border(Color.eggplant, width: 1)
                                .background(Color.offWhite)
                        }
                        .padding(.leading)
                
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        Button {
                            navigateToHome = true
                        } label: {
                            Text("Back")
                                .fontWeight(.semibold)
                        }
                        .navigationDestination(isPresented: $navigateToHome) {
                            ContentView()
                        }
                        
                        .navigationBarBackButtonHidden(true)
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color.tan)
                        .foregroundColor(.eggplant)
                        .padding()
                        /*
                        Button("Cancel") {
                        
                        }
                        .frame(width: 100.0)
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(.tan)
                        .foregroundColor(.eggplant)
                         
                         */
                        Button("Submit") {
                            submitForm = true
                            
                            newPost = Post(orgName: orgName, streetAddress: streetAddress, city: city, state: state, items: items, neededBy: neededBy, contact: contact, other: other)
                            
                            orgName = ""
                            streetAddress = ""
                            city = ""
                            state = ""
                            items = [""]
                            quantity = ""
                            neededBy = ""
                            contact = ""
                            other = ""
                            
                            Post.sampleData.append(newPost)
                        }
                        .font(.title2)
                        .fontWeight(.semibold)
                        .buttonStyle(.borderedProminent)
                        .tint(.brightPink)
                        .foregroundColor(.eggplant)
                        .navigationDestination(isPresented: $submitForm) {
                            ContentView()
                        }
                        Spacer()
                    }
                    Spacer()
                    //end of Vstack
                }
                
                .background(Rectangle()
                .foregroundColor(.lightGreen))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding()
                
            }
            .toolbar{
                ToolbarItemGroup(placement: .status) {
                    NavigationLink(destination: ContentView()) {
                        Text("Home").foregroundColor(.eggplant)
                    }
                    NavigationLink(destination: FormView(newPost: Post(orgName: "", streetAddress: "", city: "", state: "", items: [""], neededBy: "", contact: "", other: ""))) {
                        Text("New Post").foregroundColor(.eggplant)
                    }
                    NavigationLink(destination: CommunityView(posts: $testPost)){
                        Text("Community").foregroundColor(.eggplant)
                    }
                }
            }
            .toolbarBackground(.hidden, for: .navigationBar)
            
            
        }
        
        
        .background(Color.tan)
        .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing)))
        
    }
    
    
}


struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView(newPost: Post(orgName: "", streetAddress: "", city: "", state: "", items: [""], neededBy: "", contact: "", other: ""))
    }
}
