//
//  MainNavigationView.swift
//  SpicyApp
//
//  Created by Viacheslav on 22/10/22.
//

import SwiftUI

struct MainNavigationView: View {
    var randomChallenge: Challenge = challenges.randomElement()!
    @State var isActive : Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                ContentView()
                
                NavigationLink(destination: ChallengeView(store: ChallengeStore(challenge: randomChallenge)),
                               isActive: self.$isActive){
                    GetRandoNavLinkViewLabel()
                }
            }
            .navigationTitle("Challenges")
            .navigationBarHidden(true)
        }
    }
    .isDetailLink(false)
}


struct MainNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MainNavigationView()
    }
}
