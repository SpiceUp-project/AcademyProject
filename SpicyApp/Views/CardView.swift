//
//  CardView.swift
//  SpicyApp
//
//  Created by Lara on 17/10/22.
//

import SwiftUI

struct CardView: View {
    @State private var translation: CGSize = .zero
    @State private var swipeStatus: LikeDislike = .none
    
    @EnvironmentObject var shared: Shared
    
    private var challenge: Challenge
    private var onRemove: (_ challenge: Challenge) -> Void
    
    private var thresholdPercentage: CGFloat = 0.5 // when the user has draged 50% the width of the screen in either direction
    
    private enum LikeDislike: Int {
        case like, dislike, none
    }
    
    init(challenge: Challenge, onRemove: @escaping (_ challenge: Challenge) -> Void) {
        self.challenge = challenge
        self.onRemove = onRemove
    }
    
    /// What percentage of our own width have we swipped
    /// - Parameters:
    ///   - geometry: The geometry
    ///   - gesture: The current gesture translation value
    private func getGesturePercentage(_ geometry: GeometryProxy, from gesture: DragGesture.Value) -> CGFloat {
        gesture.translation.width / geometry.size.width
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                ZStack(alignment: self.swipeStatus == .like ? .topLeading : .topTrailing) {
                    Image(self.challenge.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.75)
                        .clipped()
                    
                    if self.swipeStatus == .like {
                        Text("Accept")
                            .font(.headline)
                            .padding()
                            .cornerRadius(10)
                            .foregroundColor(Color.green)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.green, lineWidth: 3.0)
                            ).padding(24)
                            .rotationEffect(Angle.degrees(-45))
                    } else if self.swipeStatus == .dislike {
                        Text("Dismiss")
                            .font(.headline)
                            .padding()
                            .cornerRadius(10)
                            .foregroundColor(Color.red)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.red, lineWidth: 3.0)
                            ).padding(.top, 45)
                            .rotationEffect(Angle.degrees(45))
                    }
                }
                
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
                    
                }
                .padding(.horizontal)
            }
            .padding(.bottom)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .offset(x: self.translation.width, y: 0)
            .rotationEffect(.degrees(Double(self.translation.width / geometry.size.width) * 25), anchor: .bottom)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        self.translation = value.translation
                        
                        if (self.getGesturePercentage(geometry, from: value)) >= self.thresholdPercentage {
                            self.swipeStatus = .like
                            shared.isAccepted = true
                        } else if self.getGesturePercentage(geometry, from: value) <= -self.thresholdPercentage {
                            self.swipeStatus = .dislike
                        } else {
                            self.swipeStatus = .none
                        }
                        
                    }
                    .onEnded { value in
                        // determine snap distance > 0.5 aka half the width of the screen
                        if abs(self.getGesturePercentage(geometry, from: value)) > self.thresholdPercentage {
                            self.onRemove(self.challenge)
                        } else {
                            self.translation = .zero
                        }
                    }
            )
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(challenge: Challenge(id: 0, challengeName: "Challenge name", points: 23, currentlyTaking: 4, imageName: "shelter", tags: ["Tag 1", "Tag 2", "Tag 3", "Tag long long"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum", Tips: "-"),
                 onRemove: { _ in
            // do nothing
        })
        .frame(height: 400)
        .padding()
        .environmentObject(Shared())
    }
}
