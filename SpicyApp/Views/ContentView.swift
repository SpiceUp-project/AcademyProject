//
//  ContentView.swift
//  SpicyApp
//
//  Created by Lara on 17/10/22.
//

import SwiftUI


 struct ContentView: View {
     @State var showView = false //for the modal sheet/Users/viacheslav/Developer/AcademyProject/SpicyApp/Views/ContentView.swift
     /// List of challenges

     @State var challenges: [Challenge] = [
        Challenge(id: 0, challengeName: "Coffee with a stranger", points: 250, currentlyTaking: 4, imageName: "coffee1", tags: ["Cheap", "Social", "Surroundings"]),
        Challenge(id: 1, challengeName: "Dance in the rain", points: 100, currentlyTaking: 4, imageName: "rain1", tags: ["Fun", "Inner Child", "Creativity"]),
        Challenge(id: 2, challengeName: "Book a solo trip", points: 1200, currentlyTaking: 4, imageName: "trip", tags: ["Travel", "Learning", "Self Reliance"]),
        Challenge(id: 3, challengeName: "Become a Masterchef", points: 80, currentlyTaking: 4, imageName: "chef", tags: ["Cooking", "Self Confidence", "Skill"]),
        Challenge(id: 4, challengeName: "Memorize a poem", points: 50, currentlyTaking: 4, imageName: "poem", tags: ["Skill", "Learning", "Academia", "Literature"]),
        Challenge(id: 5, challengeName: "Make eye contact", points: 90, currentlyTaking: 4, imageName: "eye", tags: ["Social", "Self Confidence"]),
        Challenge(id: 6, challengeName: "Hug 5 people", points: 400, currentlyTaking: 4, imageName: "hug", tags: ["Social", "Affection"]),
        Challenge(id: 7, challengeName: "Visit an animal shelter", points: 23, currentlyTaking: 230, imageName: "shelter", tags: ["Social", "Volunteering", "Fun"]),
        Challenge(id: 8, challengeName: "Have a photoshoot", points: 700, currentlyTaking: 4, imageName: "shoot", tags: ["Self Confidence", "Creativity", "Beauty", "Photography"]),
        Challenge(id: 9, challengeName: "Get lost", points: 925, currentlyTaking: 4, imageName: "lost", tags: ["Travel", "Critical Thinking", "Self Confidence"])
     ]

     /// Return the CardViews width for the given offset in the array
     /// - Parameters:
     ///   - geometry: The geometry proxy of the parent
     ///   - id: The ID of the current user
     private func getCardWidth(_ geometry: GeometryProxy, id: Int) -> CGFloat {
         let offset: CGFloat = CGFloat(challenges.count - 1 - id) * 10
         return geometry.size.width - offset
     }

     /// Return the CardViews frame offset for the given offset in the array
     /// - Parameters:
     ///   - geometry: The geometry proxy of the parent
     ///   - id: The ID of the current user
     private func getCardOffset(_ geometry: GeometryProxy, id: Int) -> CGFloat {
         return  CGFloat(challenges.count - 1 - id) * 10
     }

     private var maxID: Int {
         return self.challenges.map { $0.id }.max() ?? 0
     }

     var body: some View {
         
         VStack {
             
             GeometryReader { geometry in
                 LinearGradient(gradient: Gradient(colors: [Color.init(#colorLiteral(red: 0.9702565074, green: 0.8913408518, blue: 0.3244790137, alpha: 1)), Color.init(#colorLiteral(red: 1, green: 0.9882352941, blue: 0.862745098, alpha: 1))]), startPoint: .bottom, endPoint: .top)
                     .frame(width: geometry.size.width * 1.5, height: geometry.size.height)
                     .background(Color.blue)
                     .clipShape(Circle())
                     .offset(x: -geometry.size.width / 4, y: -geometry.size.height / 2)
                 
                 VStack(spacing: 24) {
                   
                         DateView()
                         Button {
                             showView.toggle()
                         } label: {
                             ZStack {
                                 ForEach(self.challenges, id: \.self) { challenge in
                                     Group {
                                         // Range Operator
                                         if (self.maxID - 3)...self.maxID ~= challenge.id {
                                             CardView(challenge: challenge, onRemove: { removedChallenge in
                                                 // Remove that user from our array
                                                 self.challenges.removeAll { $0.id == removedChallenge.id
                                                 }
                                             })
//                                             .animation(.spring())
                                             .frame(width: self.getCardWidth(geometry, id: challenge.id), height: 400)
                                             .offset(x: 0, y: self.getCardOffset(geometry, id: challenge.id))
                                         }
                                     }
                                 }
                             }
                             Spacer()
                         }
                         .foregroundColor(.black)
                         .sheet(isPresented: $showView) {
                             ModalView()
                         }
                     }
                 }
                 

                 Spacer()
                 Button {
                     print("Edit button was tapped")
                 } label: {
                     Label("Get random challenge", systemImage: "dice.fill")
                         .font(.title2)
                         .frame(width: 330)
                         .padding()
//                         .frame(width: .size.width)
                         .foregroundColor(.black)
                         .background(Color("appYellow"))
                         .cornerRadius(10)
                         .shadow(color: .gray, radius: 5, x: 0, y: 2)
                 }
             }.padding()
         }
     }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }
