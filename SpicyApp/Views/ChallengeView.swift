//
//  ChallengeView.swift
//  SpicyApp
//
//  Created by Sophie Schweikert on 22.10.22.
//

import SwiftUI

struct ChallengeView: View {
    @State var challenge = "Take a cup of coffee with a stranger"
    @State var timerCount: TimeInterval = 86000
    @State var categories = ["Calm", "Communication", "Cheap", "Stranger"]
    
    var body: some View {
        VStack{
            header
            timer
            Image("coffee1")
                .resizable()
                .border(Color.red)
            
            Text(challenge)
                .font(.title)
            
            categoryPills
            
            
        }
    }
}


private extension ChallengeView {
    func convertSecondsToTimeLabel(_ seconds: TimeInterval) -> String {
        let hour = Int(seconds / 3600)
        let minutes = Int(seconds / 60) % 60
        return String(format: "%02d:%02d", hour, minutes)
    }
    
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
        Text(convertSecondsToTimeLabel(timerCount))
            .font(.system(size: 80))
            .background {
                Color("appYellow")
                    .frame(width: 350, height:100)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .shadow(radius: 10)
            }
    }
    
    var categoryPills: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .center) {
                ForEach(categories, id: \.self) { category in
                    Text(category)
                        .padding(5)
                        .background { Color("appYellow") }
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                }
            }
        }
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView()
    }
}
