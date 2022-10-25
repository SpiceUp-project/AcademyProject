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
        
        
            VStack {
                Text(self.challenge.challengeName)
                NavigationLink(destination: Text("Hello, World!")) {
                    Image("_Messages-avatar")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                }
            }
//            .navigationTitle("Test Title")
        
    }
}



struct TestView_Previews: PreviewProvider {
    static var previews: some View {
            TestView(challenge: Challenge(id: 0, challengeName: "Some name", points: 23, currentlyTaking: 4, imageName: "shelter", tags: ["Tag 1", "Tag 2", "Tag 3", "Tag long long"]))
    }
}
