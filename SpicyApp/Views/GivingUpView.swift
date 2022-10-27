//
//  GivingUpView.swift
//  SpicyApp
//
//  Created by Mariavittoria La Barbera on 25/10/22.
//

import SwiftUI

struct GivingUpView: View {
    var body: some View {
        
        VStack {
            Spacer()
            
            Image("givingupImage")
                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                .aspectRatio(contentMode: .fit)
            
            
            Text("You can do this!")
                .font(.system(size: 42, weight: .heavy, design: .default))
                .padding(.bottom, 10)
            
            Text("You always pass failure on your way to success! \nOn to the next..")
                .multilineTextAlignment(.center)
                .fontWeight(.medium)
            
            Spacer()
            
            NavigationLink ("Get new challenge", destination:  MainNavigationView())
                .font(.title3)
                .frame(width: 320)
                .padding()
                .foregroundColor(.black)
                .background(Color("appYellow"))
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: 0, y: 2)
            Spacer()
        }
        .navigationTitle("Test Title")
        .navigationBarHidden(true)
    }
}


struct GivingUpView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GivingUpView()
        }
    }
}
