//
//  SecondView.swift
//  SpicyApp
//
//  Created by Lara on 19/10/22.
//

import SwiftUI

struct ModalView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color("appBeige")
                .ignoresSafeArea()
            
            VStack {
                VStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                        
                    }
                label: {
                    Image(systemName: "x.circle")
                        .foregroundColor(.black)
                        .font(.title)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .trailing)
                    Spacer()
                    
                    ScrollView {
                        VStack{  Text("Take a cup of coffee with a stranger")
                                .font(.title)
                                .multilineTextAlignment(.leading)
                                .padding(.bottom, 10)
                            
                           Image(systemName: "medal")
                                .padding(.leading, -150)
                            
                            
                            
                            Spacer()
                                .frame(height: 15)
                            
                                Text("Description")
                                    .font(.headline)
                                    .padding(.leading, -150)
                         
                            Spacer()
                                .frame(height: 5)
                            
                                Text("Lorem Ipsum bla bla bla bla")
                                    .font(.caption)
                                    .padding(.leading, -145)
                      
                            
                            
                        }
                        
                        
                    }
                }
                .padding(.bottom, 150)
                
                HStack {
                    Button {
                        print("Edit button was tapped")
                    } label: {
                        Text("Dismiss          ")
                            .font(.title3)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color(.gray))
                            .cornerRadius(18)
                            .shadow(color: .gray, radius: 5, x: 0, y: 2)
                        
                    }
                    
                    Button {
                        print("Edit button was tapped")
                    } label: {
                        Text("Done               ")
                            .font(.title3)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color("appYellow"))
                            .cornerRadius(18)
                            .shadow(color: .gray, radius: 5, x: 0, y: 2)
                        
                    }
                    
                    
                }
                
                
            }
            
        }
    }
}



struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}


