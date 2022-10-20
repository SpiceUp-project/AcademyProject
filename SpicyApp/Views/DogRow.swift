//
//  DogRow.swift
//  SpicyApp
//
//  Created by Lara on 20/10/22.
//

import SwiftUI

struct DogRow: View {
    var dog: Dog //this var is to use the dog.name and stuff here
    
    var body: some View {
        
        HStack {
            
            VStack {
 
                HStack {
                    VStack {
                        Text(dog.name)
                            .foregroundColor(dog.color)
                        Text("bau")
                    }
                    
                    Spacer()
                    Image(systemName: "pawprint.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Spacer()
                }
            }
          
        }
    }
    
    struct DogRow_Previews: PreviewProvider {
        static var previews: some View {
            DogRow(dog: Dog(name: "bla", image: "bla", color: .yellow))
        }
    }
}
