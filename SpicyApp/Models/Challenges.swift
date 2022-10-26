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
    let challengeDescription: String
    let challengeTips: String

    var description: String {
        return "\(challengeName), id: \(id)"
    }
}

//Challenges Data Base

var challenges: [Challenge] = [
   Challenge(id: 0, challengeName: "Coffee with a stranger", points: 250, currentlyTaking: 4, imageName: "coffee1", tags: ["Cheap", "Social", "Surroundings"], challengeDescription: "Lorem Ipsum Lorem Ipsum Lorem Ipsum1", challengeTips: "don't die"),
   Challenge(id: 1, challengeName: "Dance in the rain", points: 100, currentlyTaking: 4, imageName: "rain1", tags: ["Fun", "Inner Child", "Creativity"], challengeDescription: "Lorem Ipsum Lorem Ipsum Lorem Ipsum2", challengeTips: "have fun"),
   Challenge(id: 2, challengeName: "Book a solo trip", points: 1200, currentlyTaking: 4, imageName: "trip", tags: ["Travel", "Learning", "Self Reliance"], challengeDescription: "Lorem Ipsum Lorem Ipsum Lorem Ipsum3", challengeTips: "smile"),
   Challenge(id: 3, challengeName: "Become a Masterchef", points: 80, currentlyTaking: 4, imageName: "chef", tags: ["Cooking", "Self Confidence", "Skill"], challengeDescription: "Lorem Ipsum Lorem Ipsum Lorem Ipsum4", challengeTips: "sdfosdfjsdokfjsodkjfdk"),
   Challenge(id: 4, challengeName: "Memorize a poem", points: 50, currentlyTaking: 4, imageName: "poem", tags: ["Skill", "Learning", "Academia", "Literature"], challengeDescription: "Lorem Ipsum Lorem Ipsum Lorem Ipsum5", challengeTips: "3kjfdk"),
   Challenge(id: 5, challengeName: "Make eye contact", points: 90, currentlyTaking: 4, imageName: "eye", tags: ["Social", "Self Confidence"], challengeDescription: "Lorem Ipsum Lorem Ipsum Lorem Ipsum6", challengeTips: "sdfosdfjsdo4k"),
   Challenge(id: 6, challengeName: "Hug 5 people", points: 400, currentlyTaking: 4, imageName: "hug", tags: ["Social", "Affection"], challengeDescription: "Lorem Ipsum Lorem Ipsum Lorem Ipsum7", challengeTips: "sdfosdfjs5odkjfdk"),
   Challenge(id: 7, challengeName: "Visit an animal shelter", points: 23, currentlyTaking: 230, imageName: "shelter", tags: ["Social", "Volunteering", "Fun"], challengeDescription: "Lorem Ipsum Lorem Ipsum Lorem Ipsum8", challengeTips: "sdfosdf6kjfdk"),
   Challenge(id: 8, challengeName: "Have a photoshoot", points: 700, currentlyTaking: 4, imageName: "shoot", tags: ["Self Confidence", "Creativity", "Beauty", "Photography"], challengeDescription: "Lorem Ipsum Lorem Ipsum Lorem Ipsum9", challengeTips: "sd7okfjsodkjfdk"),
   Challenge(id: 9, challengeName: "Get lost", points: 925, currentlyTaking: 4, imageName: "lost", tags: ["Travel", "Critical Thinking", "Self Confidence"], challengeDescription: "Lorem Ipsum Lorem Ipsum Lorem Ipsum10", challengeTips: "sdf8dokfjsodkjfdk")
]
