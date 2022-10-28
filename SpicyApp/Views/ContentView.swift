//
//  ContentView.swift
//  SpicyApp
//
//  Created by Lara on 17/10/22.
//

import SwiftUI

//This makes size of elements sensible with size of screen (down)

let screenWidth = UIScreen.main.bounds.size.width
let screenHeight = UIScreen.main.bounds.size.height

func universalHeight(height: CGFloat) -> CGFloat {
    (screenHeight / 844) * height
}

func universalWidth(width: CGFloat) -> CGFloat {
    (screenWidth / 390) * width
}

//This makes size of elements sensible with size of screen (up)

struct ContentView: View {
    @State var showView = false //for the modal sheet/Users/viacheslav/Developer/AcademyProject/SpicyApp/Views/ContentView.swift
    /// List of challenges
    ///
    @State var shuffledChallenges: [Challenge] = challenges.shuffled()
    
    
    let randomChallenge = challenges.randomElement()
    
    /// Return the CardViews width for the given offset in the array
    /// - Parameters:
    ///   - geometry: The geometry proxy of the parent
    ///   - id: The ID of the current user
    private func getCardWidth(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        let offset2 = 30 - id * 10
        
        return geometry.size.width - CGFloat(offset2)
    }
    
    /// Return the CardViews frame offset for the given offset in the array
    /// - Parameters:
    ///   - geometry: The geometry proxy of the parent
    ///   - id: The ID of the current user
    private func getCardOffset(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        return  CGFloat(-id * 10)
    }
    
    private var maxID: Int {
        return self.shuffledChallenges.map { $0.id }.max() ?? 0
    }
    
    var body: some View {
        
        VStack {
            
            GeometryReader { geometry in
                LinearGradient(gradient: Gradient(colors: [Color.init(#colorLiteral(red: 0.9702565074, green: 0.8913408518, blue: 0.3244790137, alpha: 1)), Color.init(#colorLiteral(red: 1, green: 0.9882352941, blue: 0.862745098, alpha: 1))]), startPoint: .bottom, endPoint: .top)
                    .frame(width: geometry.size.width * 1.5, height: geometry.size.height)
                    .background(Color.blue)
                    .clipShape(Circle())
                    .offset(x: -geometry.size.width / 4, y: -geometry.size.height / 2)
                
                VStack(spacing: 24) {
                    
                    Group {
                        
                        Text("Challenges")
                            .font(.system(size: 32, weight: .heavy, design: .default))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                        
                        DateView()
                        
                        Button {
                            showView.toggle()
                        } label: {
                            ZStack {
                                
                                ForEach(self.shuffledChallenges, id: \.self) { challenge in
                                    Group {
                                        // Range Operator
                                        if let id = self.shuffledChallenges.firstIndex(of: challenge) {
                                            
                                            if id < 4 {
                                                CardView(challenge: challenge, onRemove: { removedChallenge in
                                                    // Remove that user from our array
                                                    self.shuffledChallenges.removeAll { $0.id == removedChallenge.id
                                                    }
                                                    self.shuffledChallenges.append(challenge)
                                                })
                                                .frame(width: self.getCardWidth(geometry, id: id), height: universalHeight(height: 400.0))
                                                .offset(x: 0, y: self.getCardOffset(geometry, id: id + 1))
                                                .padding(.top, 40)
                                            }
                                        }
                                    }
                                }
                            }
                            Spacer()
                        }
                        .foregroundColor(.black)
                        .sheet(isPresented: $showView) {
                            
                            ModalView(challenge: shuffledChallenges[3])
                            
                        }
                    }
                    
                }
            }
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
