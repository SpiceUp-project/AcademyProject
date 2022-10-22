//
//  ChallengeView.swift
//  SpicyApp
//
//  Created by Sophie Schweikert on 22.10.22.
//

import SwiftUI

struct ChallengeView: View {
    @State var challenge = "Take a cup of coffee with a stranger"
    @State var timerCount = "04:50"
    var body: some View {
        VStack{
            header
            timer
            
            
            Spacer()
            Text(challenge)
            
            
            
            
        }
    }
}

private extension ChallengeView {
    var header: some View {
        HStack{
            Text("Today's challenge")
                .font(.title)
            Spacer()
            Circle.init()
                .frame(width: 30)
                .foregroundColor(.green)
        }
        .padding()
    }
    
    var timer: some View {
        ZStack{
            Color("appYellow")
                .frame(width: 350, height:100)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 30, height: 30)))
                .shadow(radius: 10)
            Text(timerCount)
                .font(.system(size: 80))
        }
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView()
    }
}
