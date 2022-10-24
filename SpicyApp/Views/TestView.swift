//
//  TestView.swift
//  SpicyApp
//
//  Created by Viacheslav on 22/10/22.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            NavigationLink(destination: SpicyTabView()) {
                Image("_Messages-avatar")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
            }
        }
        .navigationTitle("Test Title")

            }
        }



struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TestView()
        }
    }
}
