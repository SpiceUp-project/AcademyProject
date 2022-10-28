//
//  RandomButtonView.swift
//  SpicyApp
//
//  Created by Viacheslav on 25/10/22.
//

import SwiftUI

struct GetRandoNavLinkViewLabel: View {
    
    var body: some View {
        Label("Decide for me", systemImage: "dice.fill")
            .font(.title2)
            .frame(width: 330)
            .padding()
        //                        .frame(width: .size.width)
            .foregroundColor(.black)
            .background(Color("appYellow"))
            .cornerRadius(10)
            .shadow(color: .gray, radius: 5, x: 0, y: 2)
        
    }
}

struct GetRandoNavLinkViewLabel_Previews: PreviewProvider {
    static var previews: some View {
        GetRandoNavLinkViewLabel()
    }
}
