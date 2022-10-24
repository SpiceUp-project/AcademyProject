//
//  ContentView.swift
//  SpicyApp
//
//  Created by Lara on 17/10/22.
//

import SwiftUI

 struct User: Hashable, CustomStringConvertible {
     var id: Int
     
     let challengeName: String
     let points: Int
     let currentlyTaking: Int
     let imageName: String
     let tags: String

     var description: String {
         return "\(challengeName), id: \(id)"
     }
 }

 struct ContentView: View {
     @State var showView = false //for the modal sheet/Users/viacheslav/Developer/AcademyProject/SpicyApp/Views/ContentView.swift
     /// List of users
     @State var users: [User] = [
         User(id: 0, challengeName: "Coffee with a stranger", points: 250, currentlyTaking: 4, imageName: "coffee1", tags: "Cheap, Social, Surroundings"),
         User(id: 1, challengeName: "Dance in the rain", points: 100, currentlyTaking: 4, imageName: "rain1", tags: "Fun, Inner Child, Creativity"),
         User(id: 2, challengeName: "Book a solo trip", points: 1200, currentlyTaking: 4, imageName: "trip", tags: "Travel, Learning, Self Reliance"),
         User(id: 3, challengeName: "Become a Masterchef", points: 80, currentlyTaking: 4, imageName: "chef", tags: "Cooking, Self Confidence, Skill"),
         User(id: 4, challengeName: "Memorize a poem", points: 50, currentlyTaking: 4, imageName: "poem", tags: "Skill, Learning, Academia, Literature"),
         User(id: 5, challengeName: "Make eye contact", points: 90, currentlyTaking: 4, imageName: "eye", tags: "Social, Self Confidence"),
         User(id: 6, challengeName: "Hug 5 people", points: 400, currentlyTaking: 4, imageName: "hug", tags: "Social, Affection"),
         User(id: 7, challengeName: "Visit an animal shelter", points: 23, currentlyTaking: 230, imageName: "shelter", tags: "Social, Volunteering, Fun"),
         User(id: 8, challengeName: "Have a photoshoot", points: 700, currentlyTaking: 4, imageName: "shoot", tags: "Self Confidence, Creativity, Beauty, Photography"),
         User(id: 9, challengeName: "Get lost", points: 925, currentlyTaking: 4, imageName: "lost", tags: "Travel, Critical Thinking, Self Confidence")
     ]

     /// Return the CardViews width for the given offset in the array
     /// - Parameters:
     ///   - geometry: The geometry proxy of the parent
     ///   - id: The ID of the current user
     private func getCardWidth(_ geometry: GeometryProxy, id: Int) -> CGFloat {
         let offset: CGFloat = CGFloat(users.count - 1 - id) * 10
         return geometry.size.width - offset
     }

     /// Return the CardViews frame offset for the given offset in the array
     /// - Parameters:
     ///   - geometry: The geometry proxy of the parent
     ///   - id: The ID of the current user
     private func getCardOffset(_ geometry: GeometryProxy, id: Int) -> CGFloat {
         return  CGFloat(users.count - 1 - id) * 10
     }

     private var maxID: Int {
         return self.users.map { $0.id }.max() ?? 0
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
                                 ForEach(self.users, id: \.self) { user in
                                     Group {
                                         // Range Operator
                                         if (self.maxID - 3)...self.maxID ~= user.id {
                                             CardView(user: user, onRemove: { removedUser in
                                                 // Remove that user from our array
                                                 self.users.removeAll { $0.id == removedUser.id
                                                 }
                                             })
//                                             .animation(.spring())
                                             .frame(width: self.getCardWidth(geometry, id: user.id), height: 400)
                                             .offset(x: 0, y: self.getCardOffset(geometry, id: user.id))
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
