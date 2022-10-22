//
//  Test.swift
//  SpicyApp
//
//  Created by Viacheslav on 22/10/22.
//

import Foundation
import SwiftUI

let date = Date()
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "EEEE, MMMM dd, yyyy" // OR "dd-MM-yyyy"

let currentDateString: String = dateFormatter.string(from: date)
print("Current date is \(currentDateString)")
