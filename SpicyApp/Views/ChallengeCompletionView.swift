//
//  ChallengeCompletionView.swift
//  SpicyApp
//
//  Created by Mariavittoria La Barbera on 25/10/22.
//

import SwiftUI

struct ChallengeCompletionView: View {
    
    @Binding var shouldPopToRootView : Bool
    @EnvironmentObject var shared: Shared
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image("completionHeart")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("Done!")
                .font(.system(size: 64, weight: .heavy, design: .default))
                .padding(.bottom, 10)
            
            HStack{
                Text("Congratulation! You spiced up your day!")
                    .font(.custom("SFProText", fixedSize: 19))
                    .fontWeight(.regular)
            }
            .frame(width: 170)
            
            Spacer()
            
            Button (action: {
                self.shouldPopToRootView = false
                shared.isAccepted = false
                
            } ){
                Text("Go back to challenges!")
            }
            .font(.title3)
            .frame(width: 320)
            .padding()
            .foregroundColor(.black)
            .background(Color("appYellow"))
            .cornerRadius(10)
            .shadow(color: .gray, radius: 5, x: 0, y: 2)
            
            Spacer()
            
        }
        .navigationTitle("Test Title")
        .navigationBarHidden(true)
    }
}
