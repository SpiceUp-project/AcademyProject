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
    
    @EnvironmentObject var shared: Shared
    
    var body: some View {

        if shared.isAccepted == false {
            NavigationView {
                VStack {
                    
                    ContentView()
                    
                    NavigationLink(destination: ChallengeView(store: ChallengeStore(challenge: randomChallenge)),
                                   isActive: self.$isActive){
                        GetRandoNavLinkViewLabel()
                    }
                }
               
                .navigationBarHidden(true)
            }
        } else {
            NavigationView {
                VStack {
                    
                    ChallengeView(store: ChallengeStore(challenge: randomChallenge)),
                                   isActive: self.$isActive)
                    }
                }
               
                .navigationBarHidden(true)

            }
        }
    }

}



struct MainNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MainNavigationView()
            .environmentObject(Shared())
    }
}
