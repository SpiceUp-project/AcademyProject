//
//  SecondView.swift
//  SpicyApp
//
//  Created by Lara on 19/10/22.
//

import SwiftUI

struct ModalView: View {
    
    let challenge: Challenge
    
    init(challenge: Challenge) {
        self.challenge = challenge
    }
    
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
                        Text(challenge.challengeName)
                            .font(.title)
                            .multilineTextAlignment(.leading)

                        
                        HStack {
                            Image(systemName: "medal")
                                .foregroundColor(.black)
                                .font(.headline)
                            }
                        VStack {
                            Text(challenge.challengeDescription)
                                .font(.body)
                                .multilineTextAlignment(.leading)
                            Text(challenge.challengeTips)
                                .font(.body)
                                .multilineTextAlignment(.leading)
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
            ModalView(challenge: challenges[3])
        }
    }
    
}
