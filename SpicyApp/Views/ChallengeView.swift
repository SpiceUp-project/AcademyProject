//
//  ChallengeView.swift
//  SpicyApp
//
//  Created by Sophie Schweikert on 22.10.22.
//

import SwiftUI

// Model
// Controller
// View

final class ChallengeStore: ObservableObject {
    @Published var challenge: Challenge
    @Published var timerLabel: String = "00:00"
    
    init(challenge: Challenge) {
        self.challenge = challenge
    }
    
    func start() {
        challenge.startChallenge()
        updateTimer()
    }
    
    func updateTimer() {
        Timer.scheduledTimer(withTimeInterval: 60, repeats: true) { timer in
            self.updateLabel()
        }
        self.updateLabel()
    }
    
    func updateLabel() {
        let oneDayTimeInterval: TimeInterval = 86400
        let timeElapsedSinceChallengeStart = (challenge.startDate?.timeIntervalSinceNow ?? oneDayTimeInterval) * -1
        let remainingChallengeTime = max(oneDayTimeInterval - timeElapsedSinceChallengeStart, 0)
        timerLabel = convertSecondsToTimeLabel(remainingChallengeTime)
    }
    
    private func convertSecondsToTimeLabel(_ seconds: TimeInterval) -> String {
        let hour = Int(seconds / 3600)
        let minutes = Int(seconds / 60) % 60
        return String(format: "%02d:%02d", hour, minutes)
    }
}

struct ChallengeView: View {
    @ObservedObject var store: ChallengeStore
    
    init(store: ChallengeStore) {
        self.store = store
    }
    
    var body: some View {
        VStack {
            timer
            Image(store.challenge.imageName)
                .resizable()
                .frame(width:200, height:200)
                .scaledToFit()
            
            HStack {
                Text(store.challenge.challengeName)
                    .font(.title)
                    .padding()
                   
                Spacer()
            }

            Spacer()
    
            HStack{
                Image(systemName: "rosette")
                Text("1000")
                    .font(.title3)
                
                Image(systemName: "hare")
                    .aspectRatio(contentMode: .fit)

                Text("76")
                    .font(.title3)

            }
                
          
            tagPills
            
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
        }.onAppear {
            store.start()
        }
    }
}

private extension ChallengeView {
    var timer: some View {
        Text(store.timerLabel)
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
                ForEach(store.challenge.tags, id: \.self) { category in
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
        ChallengeView(store: ChallengeStore(challenge: challenges[0]))
    }
}
