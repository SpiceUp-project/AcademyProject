//
//  TestView.swift
//  SpicyApp
//
//  Created by Lara on 20/10/22.
//

import SwiftUI

struct TestView: View {
    var dogs = [Dog(name: "Ulisse", image: "chef", color: .yellow),
                Dog(name: "Fuffi", image: "coffee1", color: .purple), Dog(name: "Nya", image: "date", color: .blue) ]
    
    
    var body: some View {
        NavigationView {
            List(dogs) { currentDog in
                NavigationLink {
                    DogDetail(dog: currentDog)
                } label: {
                    DogRow(dog: currentDog)
                }
            
                } .navigationTitle("Dogs")
            }
            .padding()
        }
    }


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
