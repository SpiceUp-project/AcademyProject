//
//  ModalViewC1.swift
//  SpicyApp
//
//  Created by Sophie Schweikert on 27.10.22.
//

import SwiftUI

struct ModalViewC1: View {
    
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
                            .padding([.bottom, .trailing], 10)
                            .bold()
                        
                        HStack(alignment: .center) {
                                ForEach(self.challenge.tags, id: \.self) { tag in
                                    Text(tag)
                                        .font(.footnote)
                                        .padding([.top, .leading, .bottom], 5)
                                        .padding(.horizontal, 20)
            
                                        .background { Color("appYellow") }
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .lineLimit(1)
//                                         .fixedSize(horizontal: false, vertical: true)
                                   }
                                .padding([.top, .bottom, .trailing], 6.0)
                            
                            }
                        
                        HStack {
                            Image(systemName: "medal")
                            Text("Earn \(self.challenge.points) points")
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .padding(.trailing, 210.0)
                        }
                        
                        Text ("Description")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding([.top, .bottom, .trailing], 3.0)
                            .padding(.trailing, 257.0)
                            .bold()
                        Text (challenge.Description)
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding()
                        
                        Text ("Tips and Tricks")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding([.top, .bottom, .trailing], 3.0)
                            .padding(.trailing, 235.0)
                            .bold()
                        
                        Text (challenge.Tips)
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding()
                        
                 /*       HStack {
                            Image(systemName: "medal")
                                .foregroundColor(.black)
                                .font(.headline)
                            } */
                        
                        
                
                    
                    }
                    
                }
                
            }
        }
    }
    
    
    
    struct ModalViewC1_Previews: PreviewProvider {
        static var previews: some View {
            ModalViewC1(challenge: challenges[0])
        }
    }
    
}

