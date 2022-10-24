//
//  Challenges.swift
//  SpicyApp
//
//  Created by Viacheslav on 22/10/22.
//

import Foundation
import SwiftUI

struct Challenge: Hashable, CustomStringConvertible {
    var id: Int

    let challengeName: String
    let points: Int
    let currentlyTaking: Int
    let imageName: String
    let tags: String

    var description: String {
        return "\(challengeName), id: \(id)"
    }
}

