//
//  DogDetail.swift
//  SpicyApp
//
//  Created by Lara on 20/10/22.
//

import SwiftUI

struct DogDetail: View {
    var dog: Dog
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(dog.image)
                .resizable()
                .scaledToFill()
                .frame(width: 140, height: 140)
                .clipShape(Circle())
                .shadow(radius: 5)
        }
        .navigationTitle(dog.name)
    }
}
