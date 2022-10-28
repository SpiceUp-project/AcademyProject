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
                            
                            
                            HStack {
                                Text(challenge.challengeName)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)
                                //.padding([.bottom, .trailing], 0)
                            }
                            .frame(width: 350)
                            //.background(Color.gray)
                            
                            
                            
                            
                            HStack(alignment: .center) {
                                ForEach(self.challenge.tags, id: \.self) { tag in
                                    Text(tag)
                                        .font(.footnote)
                                        .padding([.top, .leading, .bottom], 5)
                                        .padding(.horizontal, 20)
                                    
                                        .background { Color("appYellow") }
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .lineLimit(1)
                                }
                                .padding([.top, .bottom, .trailing], 6.0)
                                
                            }
                            Spacer()
                                .frame(height: 18)
                            
                            VStack{
                                HStack {
                                    
                                    Image(systemName: "medal")
                                    Text("Earn \(self.challenge.points) points")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                        .padding(.trailing, 210.0)
                                }
                                
                                
                                
                                Spacer()
                                    .frame(height: 18)
                                
                                Text ("Description")
                                    .font(.body)
                                    .multilineTextAlignment(.leading)
                                //.padding([.top, .bottom, .trailing], 3.0)
                                    .padding(.trailing, 257.0)
                                    .bold()
                                
                                Spacer()
                                
                                Text (challenge.Description)
                                    .font(.body)
                                    .multilineTextAlignment(.leading)
                                
                                Spacer()
                                    .frame(height: 18)
                                
                                Text ("Tips and Tricks")
                                    .font(.body)
                                    .multilineTextAlignment(.leading)
                                //.padding([.top, .bottom, .trailing], 3.0)
                                    .padding(.trailing, 230)
                                    .bold()
                                
                                Spacer()
                                
                                Text (challenge.Tips)
                                    .font(.body)
                                    .multilineTextAlignment(.leading)
                                
                            }
                            
                            .frame(width: 350)
                            //.background(Color.gray)
                            
                        }
                        
                        
                        
                        
                        
                        HStack {
//                            Button {
//                                presentationMode.wrappedValue.dismiss()
//                            }
//                        label: {
//                            Text("Bac")
//                                .font(.title3)
//                                .frame(width: 330)
//                                .padding()
//                                .foregroundColor(.black)
//                                .background(Color("appGray"))
//                                .cornerRadius(18)
//                                .shadow(color: .gray, radius: 5, x: 0, y: 2)
//                        }
                            
//                            NavigationLink(destination:  ChallengeView(store: ChallengeStore(challenge: challenge), rootIsActive: self.$isModalActive),
//                                           isActive: self.$isModalActive) {
//                                Text("Accept               ")
//                                    .font(.title3)
//                                    .padding()
//                                    .foregroundColor(.black)
//                                    .background(Color("appYellow"))
//                                    .cornerRadius(18)
//                                    .shadow(color: .gray, radius: 5, x: 0, y: 2)
//                            }
//                                           .isDetailLink(false)
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
