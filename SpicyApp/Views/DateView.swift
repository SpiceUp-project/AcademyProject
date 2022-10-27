//
//  DateView.swift
//  SpicyApp
//
//  Created by Viacheslav on 22/10/22.
//

import SwiftUI

struct DateView: View {
    
    //     let weekday = Calendar.current.component(.weekday, from: Date.now)
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    //                     Text("\(weekDay)")
                    Text(Date.now, format: .dateTime.weekday(.wide).day().month(.wide))
                        .font(.title)
                        .bold()
                    Text("Choose today's challenge!") //can be changed to "today's first" "today's second" according to how many challenges done etc
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
            }.padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .foregroundColor(.black)
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView()
    }
}
