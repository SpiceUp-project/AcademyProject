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
                .font(.custom("SFProDisplay", fixedSize: 50))
                .fontWeight(.bold)
                .padding(.bottom, 10)
            
            Text("You always pass failure on your way to success!")
                .multilineTextAlignment(.center)
                .font(.custom("SFProText", fixedSize: 19))
                .fontWeight(.medium)
                .padding(.bottom, 10)
            
            Text("On to the next..")
                .multilineTextAlignment(.leading)
                .font(.body)
                .fontWeight(.medium)

            
            Spacer()
            
            Button {
                print("Edit button was tapped")
            } label: {
                Text("New challenge                       ")
                    .font(.title3)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color("appYellow"))
                    .cornerRadius(18)
                    .shadow(color: .gray, radius: 5, x: 0, y: 2)
            }
        }
    }
}
        

struct GivingUpView_Previews: PreviewProvider {
    static var previews: some View {
        GivingUpView()
    }
}
