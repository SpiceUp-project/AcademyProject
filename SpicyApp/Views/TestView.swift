//
//  TestView.swift
//  SpicyApp
//
//  Created by Viacheslav on 22/10/22.
//

import SwiftUI

struct TestView: View {
    
    private var challenge: Challenge
    
    init (challenge: Challenge) {
        self.challenge = challenge
    }
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                GeometryReader { geometry in
                    LinearGradient(gradient: Gradient(colors: [Color.init(#colorLiteral(red: 0.9702565074, green: 0.8913408518, blue: 0.3244790137, alpha: 1)), Color.init(#colorLiteral(red: 1, green: 0.9882352941, blue: 0.862745098, alpha: 1))]), startPoint: .bottom, endPoint: .top)
                        .frame(width: geometry.size.width * 1.5, height: geometry.size.height)
                        .background(Color.blue)
                        .clipShape(Circle())
                        .offset(x: -geometry.size.width / 4, y: -geometry.size.height / 2)
                }
                VStack {
                    
                    
                    HStack {
                        Text("See your achievements.")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 60, trailing: 0))
                        
                        NavigationLink(destination: Text("Hello, World!")) {
                            Image("fabulous-user")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .padding(EdgeInsets(top: 0, leading: 20, bottom: 60, trailing: 0))
                        }
                    }
                    
                    NavigationLink(destination: Text("Hello, World!")) {
                        Text("Take a cup of coffee with a stranger")
                            .font(.title3)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color("appYellow"))
                            .cornerRadius(18)
                            .shadow(color: .gray, radius: 5, x: 0, y: 2)
                    }
                    
                    NavigationLink(destination: Text("Hello, World!")) {
                        Text("Take a cup of coffee with a stranger")
                            .font(.title3)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color("appYellow"))
                            .cornerRadius(18)
                            .shadow(color: .gray, radius: 5, x: 0, y: 2)
                    }
                    
                    NavigationLink(destination: Text("Hello, World!")) {
                        Text("Take a cup of coffee with a stranger")
                            .font(.title3)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color("appYellow"))
                            .cornerRadius(18)
                            .shadow(color: .gray, radius: 5, x: 0, y: 2)
                    }
                    
                    NavigationLink(destination: Text("Hello, World!")) {
                        Text("Take a cup of coffee with a stranger")
                            .font(.title3)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color("appYellow"))
                            .cornerRadius(18)
                            .shadow(color: .gray, radius: 5, x: 0, y: 2)
                    }
                    
                    
                    Spacer()
                    
                }
                
            }
            
        }
        
    }
    
    
}


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TestView(challenge: Challenge(id: 0, challengeName: "Take a cup of coffee with a stranger", points: 250, currentlyTaking: 4, imageName: "coffee1", tags: ["Cheap", "Social", "Surroundings"], Description: "The ‘take a cup of coffee with a stranger’ is a challenge based totally on working on the socializing and getting to know new people skill and also a little bit on trying new kinds of coffee in your area’s cafes? \nAs the title says, you have 24 hours to decide a cafe (maybe your favorite and usual one or one you have always wanted to try), go there and find someone to share a coffee with. It HAS TO be a total stranger, someone you don’t know. Maybe someone you see sitting there by themselves or someone who inspires you just as you walk into the cafè. \nYou approach them, you drink coffee together and the rest should come by itself! Be proud of yourself, you met someone new and you’re probably drinking a really good coffee.", Tips: "Here there are some suggestions for you: Approach them kindly and ask them if they’re okay with sharing some time with you. \nJust move to the next person if they’re not available, it’s okay! \nYou can also ask it to a group of two/three people: the more the better! \nYou don’t necessarily have to drink coffee if you or the other person doesn’t feel like it; however having a warm cup in your hands might be nice! \nShare your plans or your location with a friend or family so that they always know that you’re safe and keep them updated about where you are and if you are feeling comfortable enough to stay. \nRELAX! You’re getting out of your comfort zone, it might not be the easiest thing to do but don’t forget to breathe and feel proud of yourself!" ))
        }
    }
}

