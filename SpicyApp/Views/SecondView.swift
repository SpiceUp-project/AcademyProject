//
//  SecondView.swift
//  SpicyApp
//
//  Created by Lara on 19/10/22.
//

import SwiftUI

struct ModalView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                    
                } label: {
                    Image(systemName: "x.circle")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .trailing)
                Spacer()
            }
            VStack {
        ScrollView {
            Text("This is the second one")
                .font(.title2.weight(.heavy))
        }
        
        ScrollView(.horizontal) {
            Text("hello dsjfdfsdgodgjsdogjncncjcjdfjgjgjkbkbkbkbkbk")
        }
    }
        }
    }
}


struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
