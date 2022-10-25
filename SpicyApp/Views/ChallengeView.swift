//
//  ChallengeView.swift
//  SpicyApp
//
//  Created by Sophie Schweikert on 22.10.22.
//

import SwiftUI

struct ChallengeView: View {
    private var challenge: Challenge
    @State private var timerCount: TimeInterval = 0
    
    init(challenge: Challenge) {
        self.challenge = challenge
        
        startTimer()
    }
    
    var body: some View {
        VStack {
            timer
            Image(challenge.imageName)
                .resizable()
                .frame(width:200, height:200)
                .scaledToFit()
            
            HStack {
                Text(challenge.challengeName)
                    .font(.title)
                    
                    //.frame(maxWidth: .infinity)
                    //.offset (x: -25, y: 0)
                    //.multilineTextAlignment(.leading)
                    
                    //.fixedSize(horizontal: false, vertical: true)
                    .padding()
                   
                Spacer()
            }
            

            
            Spacer()
               // .padding()
            HStack{
                Image(systemName: "rosette")
                    //.offset (x: -110, y: -70)
                Text("1000")
                    .font(.title3)
                    //.offset (x: -112, y: -70)
                
                Image(systemName: "hare")
                    .aspectRatio(contentMode: .fit)
                    //.offset(x:-110, y:-70)
                Text("76")
                    .font(.title3)
                    //.offset(x:-112, y:-70)
            }
                
          
            tagPills
                //.offset(x:26, y:-50)
            
            HStack(spacing:20){
                
                Button("Give up") {
                    print("Tapping the Give up button")
                }
                .padding(.horizontal,30)
                .frame(maxWidth: .infinity)
                .padding(20)
                .font(.title3)
                .foregroundColor(.black)
                .background(Color.appGray)
                .cornerRadius(18)
                .shadow(radius: 5, x: 0, y: 2)
                
                Button("Done") {
                    print("Done button was tapped")
                }
                .frame(maxWidth: .infinity)
                .padding(20)
                .font(.title3)
                .foregroundColor(.black)
                .background(Color.appYellow)
                .cornerRadius(18)
                .shadow(radius: 5, x: 0, y: 2)
            }
            .padding()
        }
    }
}

private extension ChallengeView {
    mutating func startTimer() {
        let oneDayTimeInterval: TimeInterval = 86400
        let timeElapsedSinceChallengeStart = (challenge.startDate?.timeIntervalSinceNow ?? oneDayTimeInterval) * -1
        let remainingChallengeTime = max(oneDayTimeInterval - timeElapsedSinceChallengeStart, 0)

        self.timerCount = remainingChallengeTime
    }
    
    mutating func handleTimer(_ timer: Timer) {
        print(self.timerCount)
        guard self.timerCount >= 0 else {
            timer.invalidate()
            return }
        self.timerCount -= 60
    }
    
    func convertSecondsToTimeLabel(_ seconds: TimeInterval) -> String {
        let hour = Int(seconds / 3600)
        let minutes = Int(seconds / 60) % 60
        return String(format: "%02d:%02d", hour, minutes)
    }
    
    var timer: some View {
        Text(convertSecondsToTimeLabel(timerCount))
            .font(.system(size: 80))
            .background {
                Color.appYellow
                    .frame(width: 350, height:100)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .shadow(radius: 10)
            }
    }
    
    var tagPills: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .center) {
                ForEach(challenge.tags, id: \.self) { category in
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
        ChallengeView(challenge: challenges[0])
    }
}
