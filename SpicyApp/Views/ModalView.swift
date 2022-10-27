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
        NavigationView {
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
                        
                        
                        HStack {
                            NavigationLink(destination: ContentView()) {
                                
                                Text("Dismiss          ")
                                    .font(.title3)
                                    .padding()
                                    .foregroundColor(.black)
                                    .background(Color("appGray"))
                                    .cornerRadius(18)
                                    .shadow(color: .gray, radius: 5, x: 0, y: 2)
                                
                            }
                            
                            
                            NavigationLink(destination:  ChallengeView(store: ChallengeStore(challenge: challenge))) {
                                
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
            }
        }
        
    
    
    struct ModalView_Previews: PreviewProvider {
        static var previews: some View {
            ModalView(challenge: challenges[0])
        }
    }
    

