//
//  Challenges.swift
//  SpicyApp
//
//  Created by Viacheslav on 22/10/22.
//

import Foundation
import SwiftUI

//Challenges Structure

struct Challenge: Hashable, CustomStringConvertible {
    var id: Int

    let challengeName: String
    let points: Int
    let currentlyTaking: Int
    let imageName: String
    let tags: [String]
    var Description: String

    var description: String {
        return "\(challengeName), id: \(id)"
    }
}

//Challenges Data Base

var challenges: [Challenge] = [
   Challenge(id: 0, challengeName: "Coffee with a stranger", points: 250, currentlyTaking: 4, imageName: "coffee1", tags: ["Cheap", "Social", "Surroundings"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum1"),
   Challenge(id: 1, challengeName: "Dance in the rain", points: 100, currentlyTaking: 4, imageName: "rain1", tags: ["Fun", "Inner Child", "Creativity"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum2"),
   Challenge(id: 2, challengeName: "Book a solo trip", points: 1200, currentlyTaking: 4, imageName: "trip", tags: ["Travel", "Learning", "Self Reliance"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum3"),
   Challenge(id: 3, challengeName: "Become a Masterchef", points: 80, currentlyTaking: 4, imageName: "chef", tags: ["Cooking", "Self Confidence", "Skill"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum4"),
   Challenge(id: 4, challengeName: "Memorize a poem", points: 50, currentlyTaking: 4, imageName: "poem", tags: ["Skill", "Learning", "Academia", "Literature"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum5"),
   Challenge(id: 5, challengeName: "Make eye contact", points: 90, currentlyTaking: 4, imageName: "eye", tags: ["Social", "Self Confidence"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum6"),
   Challenge(id: 6, challengeName: "Hug 5 people", points: 400, currentlyTaking: 4, imageName: "hug", tags: ["Social", "Affection"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum7"),
   Challenge(id: 7, challengeName: "Visit an animal shelter", points: 23, currentlyTaking: 230, imageName: "shelter", tags: ["Social", "Volunteering", "Fun"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum8"),
   Challenge(id: 8, challengeName: "Have a photoshoot", points: 700, currentlyTaking: 4, imageName: "shoot", tags: ["Self Confidence", "Creativity", "Beauty", "Photography"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum9"),
   Challenge(id: 9, challengeName: "Get lost", points: 925, currentlyTaking: 4, imageName: "lost", tags: ["Travel", "Critical Thinking", "Self Confidence"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum10")
]
