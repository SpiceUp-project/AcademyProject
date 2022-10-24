//
//  MainNavigationView.swift
//  SpicyApp
//
//  Created by Viacheslav on 22/10/22.
//

import SwiftUI

struct MainNavigationView: View {
    
    var body: some View {
        NavigationView {
            
            ContentView()
            
                .navigationTitle("Challenges")
            //            .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: TestView()) {
                            Image(systemName: "person")
                                .padding()
                              
                            }
                        }
                    }
                }
        }
            }
    


struct MainNavigationView_Previews: PreviewProvider {
    static var previews: some View {
       
            MainNavigationView()
        
    }
}
