//
//  FormView.swift
//  NeedsNow
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct FormView: View {
    var allPosts: [Post]
    @State var newPost: Post
    @State var orgName = ""
    @State var streetAddress = ""
    @State var city = ""
    @State var state = ""
    @State var item = ""
    @State var items = [item]
    @State var quantity = ""
    @State var neededBy = ""
    @State var contact = ""
    @State var other = ""
    
    
    var body: some View {
        ScrollView {
            ZStack{
                Color.tan
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing:20){
                    
                    HStack{
                        //title
                        Spacer()
                            .frame(width: 125.0, height: 100.0)
                        Text("Sign Up")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            
                        Spacer()
                    }
                    //}
                    //Org details
                    Group {
                        //
                        HStack{
                            TextField("Organization Name", text: $orgName)
                                .padding(.leading)
                                .frame(width: 320.0, height: 30.0)
                                .border(Color.black, width: 1)
                                .background(Color.offWhite)
                        }
                        .padding(.leading)
                        .frame(height: 40.0)
                        HStack{
                            TextField("Street Address", text: $streetAddress)
                                .padding(.leading)
                                .frame(width: 320.0, height: 30.0)
                                .border(Color.black, width: 1)
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
                                    .border(Color.black, width: 1)
                                    .background(Color.offWhite)
                                    .padding(.leading)
                                    .frame(height: 40.0)
                                TextField("State", text: $state)
                                    .padding(.leading)
                                    .frame(width: 100.0, height: 30.0)
                                    .border(Color.black, width: 1)
                                    .background(Color.offWhite)
                                    .padding(.leading)
                                    .frame(height: 40.0)
                            }
                        }
                        HStack{
                            Group {
                                TextField("Items needed", text: $item)
                                    .padding(.leading)
                                    .frame(width: 200.0, height: 30.0)
                                    .border(Color.black, width: 1)
                                    .background(Color.offWhite)
                                    .padding(.leading)
                                    .frame(height: 40.0)
                                //quantity details
                                TextField("Quantity", text: $quantity)
                                    .padding(.leading)
                                    .frame(width: 100.0, height: 30.0)
                                    .border(Color.black, width: 1)
                                    .background(Color.offWhite)
                                    .padding(.leading)
                                    .frame(height: 40.0)
                            } 
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
                                .border(Color.black, width: 1)
                                .background(Color.offWhite)
                        }
                        .padding(.leading)
                        .frame(height: 40.0)
                        HStack{
                            TextField("Phone Number", text: $contact)
                                .padding(.leading)
                                .frame(width: 320.0, height: 30.0)
                                .border(Color.black, width: 1)
                                .background(Color.offWhite)
                        }
                        .padding(.leading)
                        .frame(height: 40.0)
                        HStack{
                            TextField("Other Info", text: $other)
                                .padding(.leading)
                                .frame(width: 320.0, height: 90.0)
                                .border(Color.black, width: 1)
                                .background(Color.offWhite)
                        }
                        .padding(.leading)
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        Button("Cancel") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .frame(width: 100.0)
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(.tan)
                        .foregroundColor(.eggplant)
                        Button("Submit") {
                            allPosts.append(Post(orgName: <#T##String#>, streetAddress: <#T##String#>, city: <#T##String#>, state: <#T##String#>, items: <#T##[item]#>, neededBy: <#T##String#>, contact: <#T##String#>, other: <#T##String#>))
                            orgName = ""
                            streetAddress = ""
                            city = ""
                            state = ""
                            item = ""
                            quantity = ""
                            neededBy = ""
                            contact = ""
                            other = ""
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(.brightPink)
                        .foregroundColor(.eggplant)
                        Spacer()
                    }
                    Spacer()
                    //end of Vstack
                } .background(Rectangle()
                    .foregroundColor(.lightGreen))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding()
                
                
            }
        }
        
    }
    
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView(newPost: Post(orgName: "", streetAddress: "", city: "", state: "", item: "", quantity: "", neededBy: "", contact: "", other: ""))
    }
}
