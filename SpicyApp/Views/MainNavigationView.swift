//
//  MainNavigationView.swift
//  SpicyApp
//
//  Created by Viacheslav on 22/10/22.
//

import SwiftUI

struct MainNavigationView: View {
    var randomChallenge: Challenge = challenges.randomElement()!
    
    var body: some View {
        NavigationView {
            VStack {
                ContentView()
                NavigationLink(destination: TestView(challenge: randomChallenge)) {
                    GetRandoNavLinkViewLabel()
                }
            }
            .navigationTitle("Challenges")
        }
        
    }
    
    //                .toolbar {
    //                    ToolbarItem (placement: .navigationBarTrailing){
    //                        NavigationLink(destination: TestView()) {
    //                            Image(systemName: "person")
    //                                .resizable()
    //                                .frame(width: 60, height: 60)
    //                                .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
    //                        }
    //                    }
    //                }
    
    
}


struct MainNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MainNavigationView()
    }
}
