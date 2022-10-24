//
//  MainNavigationView.swift
//  SpicyApp
//
//  Created by Viacheslav on 22/10/22.
//

import SwiftUI

struct MainNavigationView: View {
    
    var body: some View {
        
        ContentView()
            .navigationTitle("Challenges")
//            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                        ToolbarItem(content: {
                            Image("_Messages-avatar")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                    })
                }
            }
    }


struct MainNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainNavigationView()
        }
    }
}
