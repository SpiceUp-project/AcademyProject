//
//  SecondView.swift
//  SpicyApp
//
//  Created by Lara on 19/10/22.
//

import SwiftUI
struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View { configuration.label
            .padding(20)
            .padding(.horizontal, 30)
            .background(.gray)
            .foregroundColor(.white)
            .clipShape(Rectangle())
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration:0.2), value: configuration.isPressed)
        
    }
}

struct ModalView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Color.white
                .ignoresSafeArea()
            
            Text("Take a cup of coffee with a stranger")
                .font(.title)
                .multilineTextAlignment(.leading)
                .offset(y: 6)
                .padding(.bottom, 650)
            //.frame()
            
            HStack {
                Button("Dismiss") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/

                }
                .buttonStyle(GrowingButton())
                
                Button("Done  ") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .buttonStyle(GrowingButton())
                

            }
            
            
            
        }
        
        
    }
}



struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
