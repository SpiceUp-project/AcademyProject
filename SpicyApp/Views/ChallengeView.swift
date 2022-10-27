//
//  ChallengeView.swift
//  SpicyApp
//
//  Created by Sophie Schweikert on 22.10.22.
//

import SwiftUI

struct ChallengeView: View {
    @ObservedObject var store: ChallengeStore
    @State var showView1 = false
    
    init(store: ChallengeStore) {
        self.store = store
    }
    
    var body: some View {
        VStack {
            
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
                    .padding()
            }
            .sheet(isPresented: $showView1) {
                ModalViewC1(challenge: store.challenge)
            }
 
            Text(store.challenge.challengeName)
                .lineLimit(0)
                .font(.title)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            
            Spacer()
            
            tagPills
                .multilineTextAlignment(.trailing)
                .padding(.horizontal)
                .padding()

            Spacer()
            
            
            HStack(spacing:20){
                NavigationLink ("Give up", destination:  GivingUpView())
                    .font(.title3)
                    .frame(width: 140)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color("appGray"))
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 5, x: 0, y: 2)
                
                NavigationLink ("Done", destination:  ChallengeCompletionView())
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
    }
    
}

private extension ChallengeView {
    var timer: some View {
        Text(store.timerLabel)
            .font(.system(size: 80))
            .background {
                Color.appYellow
                    .frame(width: 350, height:100)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .shadow(radius: 10)
            }
            .padding()
    }
    
    var tagPills: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .center) {
                ForEach(store.challenge.tags, id: \.self) { category in
                    Text(category)
                        .padding(9)
                        .background { Color("appYellow") }
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    
                }
            }
            
            
        }
        
    }
}



struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ChallengeView(store: ChallengeStore(challenge: challenges[0]))
        }
    }
}
