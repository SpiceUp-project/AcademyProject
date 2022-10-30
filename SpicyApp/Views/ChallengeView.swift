//
//  ChallengeView.swift
//  SpicyApp
//
//  Created by Sophie Schweikert on 22.10.22.
//

import SwiftUI

struct ChallengeView: View {
    
    @Binding var rootIsActive : Bool
    
    @ObservedObject var store: ChallengeStore
    @State var showView1 = false
    
    init(store: ChallengeStore, rootIsActive: Binding<Bool>) {
        self.store = store
        _rootIsActive = rootIsActive
    }
    
    var body: some View {
        VStack {
            
            Text("Today's Challenge")
                .font(.system(size: 32, weight: .heavy, design: .default))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 70)
                .padding(.leading, 15)
//                .padding(.bottom, 5)
            
            timer
                .padding(.top, 10)
            
            Button {
                showView1.toggle()
            } label: {
                Image(store.challenge.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:300, height:300)
                    .cornerRadius(10)
                    .padding()
                    .background(Color.white)
                    .clipped()
                    .shadow(color: Color.gray, radius: 10, x: 0, y: 0)
            }
            .cornerRadius(10)
            .sheet(isPresented: $showView1) {
                ModalViewC1(challenge: store.challenge)
            }
            
            HStack {
                Text(store.challenge.challengeName)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
            }
//            Spacer()
            
            tagPills
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
                .padding(.bottom)
            
//            Spacer()
            
            HStack(spacing:20){
                NavigationLink ("Give up", destination:  GivingUpView(shouldPopToRootView: self.$rootIsActive))
                    .font(.title3)
                    .frame(width: 140)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color("appGray"))
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 5, x: 0, y: 2)
                
                NavigationLink ("Done", destination:  ChallengeCompletionView(shouldPopToRootView: self.$rootIsActive))
                    .font(.title3)
                    .frame(width: 140)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color("appYellow"))
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 5, x: 0, y: 2)
            }
            .padding(.bottom)
            
        }.onAppear {
            store.start()
        }
        .navigationTitle("Today's challenge")
        .navigationBarHidden(true)
    }
    
}

private extension ChallengeView {
    var timer: some View {
        Text(store.timerLabel)
            .font(.system(size: 80))
            .background {
                Color.appYellow
                    .frame(width: 350, height:100)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(radius: 5)
            }
//            .padding(.top, 5)
    }
    
    var tagPills: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .center) {
                ForEach(store.challenge.tags, id: \.self) { category in
                    Text(category)
                        .font(.footnote)
                        .padding(5)
                        .padding(.horizontal, 10)
                        .background { Color("appYellow") }
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .lineLimit(1)
                    
                }
                Spacer()
                    .frame(height: 18)
            }
            .frame(alignment: .leading)
            .padding(.leading)
            
        }
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ChallengeView(store: ChallengeStore(challenge: challenges[0]), rootIsActive: .constant(false))
        }
    }
}
