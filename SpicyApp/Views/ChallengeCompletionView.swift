//
//  ChallengeCompletionView.swift
//  SpicyApp
//
//  Created by Mariavittoria La Barbera on 25/10/22.
//

import SwiftUI

struct ChallengeCompletionView: View {
    var body: some View {
        
        VStack {
            Spacer()
            
            Image("completionHeart")
                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                .aspectRatio(contentMode: .fit)
            
            
            Text("Done!")
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .fontWeight(.heavy)
                .padding(.bottom, 10)
            
            Text("Congratulation! You spiced up your day!")
                .font(.body)
                .fontWeight(.regular)

            
            Spacer()
            
            Button {
                print("Edit button was tapped")
            } label: {
                Text("See your achievements!   ")
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



struct ChallengeCompletionView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeCompletionView()
    }
}
