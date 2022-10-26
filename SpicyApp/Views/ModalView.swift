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
                            .padding(.bottom, 10)
                            .bold()
                        HStack(alignment: .center) {
                                ForEach(self.challenge.tags, id: \.self) { tag in
                                    Text(tag)
                                        .font(.footnote)
                                        .padding(.vertical, 5)
                                        .padding(.horizontal, 15)
                                        .background { Color("appYellow") }
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .lineLimit(1)
//                                         .fixedSize(horizontal: false, vertical: true)
                                   }
                            }
                        Text("Earn \(self.challenge.points) points")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text ("Description")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.vertical, 10)
                            .bold()
                        Text (challenge.Description)
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding()
                        
                        Spacer()
                        
                        Text (challenge.Tips)

                        
                 /*       HStack {
                            Image(systemName: "medal")
                                .foregroundColor(.black)
                                .font(.headline)
                            } */
                        
                        
                
                    
                    }

                    
                    HStack {
                        Button {
                            print("Edit button was tapped")
                        } label: {
                            Text("Dismiss          ")
                                .font(.title3)
                                .padding()
                                .foregroundColor(.black)
                                .background(Color("appGray"))
                                .cornerRadius(18)
                                .shadow(color: .gray, radius: 5, x: 0, y: 2)
                            
                        }
                        
                        Button {
                            print("Edit button was tapped")
                        } label: {
                            Text("Accept               ")
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
