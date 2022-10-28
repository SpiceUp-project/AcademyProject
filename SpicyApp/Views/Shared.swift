//
//  Shared.swift
//  SpicyApp
//
//  Created by Lara on 28/10/22.
//

import SwiftUI

class Shared: ObservableObject {
    @Published var isAccepted: Bool = false
    @Published var currentChallenge : Challenge!
}
