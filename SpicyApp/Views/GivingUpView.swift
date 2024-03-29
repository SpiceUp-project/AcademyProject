//
//  GivingUpView.swift
//  SpicyApp
//
//  Created by Mariavittoria La Barbera on 25/10/22.
//

import SwiftUI

struct GivingUpView: View {
    
    @Binding var shouldPopToRootView : Bool
    @EnvironmentObject var shared: Shared
    
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
            
            Spacer()
            
            Button (action: {
                self.shouldPopToRootView = false
                shared.isAccepted = false
            } ){
                Text("Go back to challenges!")
            }
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

