//
//  ChallengeView.swift
//  SpicyApp
//
//  Created by Sophie Schweikert on 22.10.22.
//

import SwiftUI

struct ChallengeView: View {
    
    private var challenge: Challenge
//    @State var challenge = "Take a cup of coffee with a stranger"
    @State var timerCount: TimeInterval = 86000
//    @State var categories = ["Calm", "Communication", "Cheap", "Stranger"]
    
    var body: some View {
        VStack{
            timer
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    Text("\(self.challenge.challengeName)")
                        .font(.title)
                        .bold()
                    HStack(alignment: .center) {
                            ForEach(self.challenge.tags, id: \.self) { tag in
                                Text(tag)
                                    .font(.footnote)
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 15)
                                    .background { Color("appYellow") }
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                    .lineLimit(1)
                               }
                        }
                    Text("Earn \(self.challenge.points) points")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            Spacer()
            HStack(spacing:20){
                
                Button("Give up") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .padding(.horizontal,30)

                .frame(maxWidth: .infinity)
                .padding(20)
                .font(.title3)
                .accentColor(.black)
                .accentColor(.black)
                .background(Color("appGray"))
                .background(Color("appYellow"))
                .cornerRadius(18)
                .shadow(color: .gray, radius: 5, x: 0, y: 2)
                
                         Button("Done") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/

                }
                .frame(maxWidth: .infinity)
                .padding(20)
                .font(.title3)
                .accentColor(.black)
                .background(
                    Color("appYellow")
                    )
                .background(Color("appYellow"))
                .cornerRadius(18)
                .shadow(color: .gray, radius: 5, x: 0, y: 2)
            }
            .padding()
        }
    }
}




private extension ChallengeView {
    func convertSecondsToTimeLabel(_ seconds: TimeInterval) -> String {
        let hour = Int(seconds / 3600)
        let minutes = Int(seconds / 60) % 60
        return String(format: "%02d:%02d", hour, minutes)
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
}
    
    struct ChallengeView_Previews: PreviewProvider {
        static var previews: some View {
            ChallengeView()
        }
    }

