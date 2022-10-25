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
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            
            Text("Done!")
                .font(.custom("SFProDisplay", fixedSize: 64))
                .fontWeight(.bold)
                .padding(.bottom, 10)
            
            HStack{
                Text("Congratulation! You spiced up your day!")
                    .font(.custom("SFProText", fixedSize: 19))
                    .fontWeight(.regular)
            }
            .frame(width: 170)
            
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
