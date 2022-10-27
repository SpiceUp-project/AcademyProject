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
    var Tips: String
    
    var startDate: Date? = nil
    
    var description: String {
        return "\(challengeName), id: \(id)"
    }
    
    mutating func startChallenge() {
        guard startDate == nil else { return }
        startDate = Date()
    }
}

//Challenges Data Base

var challenges: [Challenge] = [
   Challenge(id: 0, challengeName: "Take a cup of coffee with a stranger", points: 250, currentlyTaking: 4, imageName: "coffee1", tags: ["Cheap", "Social", "Surroundings"], Description: "The ‘take a cup of coffee with a stranger’ is a challenge based on working on the socializing and getting to know new people skill and also a little bit on trying new kinds of coffee in your area’s cafes? \nAs the title says, you have 24 hours to decide a cafe (maybe your favorite and usual one or one you have always wanted to try), go there and find someone to share a coffee with. It HAS TO be a total stranger, someone you don’t know. Maybe someone you see sitting there by themselves or someone who inspires you just as you walk into the cafè. \nYou approach them, you drink coffee together and the rest should come by itself! Be proud of yourself, you met someone new and you’re probably drinking a really good coffee.", Tips: "Here there are some suggestions for you: \n- Approach them kindly and ask them if they’re okay with sharing some time with you.\\n- Just move to the next person if they’re not available, it’s okay! \n- You can also ask it to a group of two/three people: the more the better! \n- You don’t necessarily have to drink coffee if you or the other person doesn’t feel like it; however having a warm cup in your hands might be nice! \n- Share your plans or your location with a friend or family so that they always know that you’re safe and keep them updated about where you are and if you are feeling comfortable enough to stay. \n- RELAX! You’re getting out of your comfort zone, it might not be the easiest thing to do but don’t forget to breathe and feel proud of yourself!" ),
   Challenge(id: 1, challengeName: "Learn a new language without using Internet", points: 100, currentlyTaking: 4, imageName: "rain1", tags: ["Fun", "knowledge", "Self-taught"], Description: "Have you ever wondered how people used to learn new languages before Internet? \nYes? No? Because this is exactly what you’re going to experience today with this challenge! \nAll you need to do is to turn all your devices’ internet connection off and start working for it! You want to learn Spanish salutations? Or maybe Russian food’s names? Ever thought of Italian common sayings? \nJust choose one language that you really want to master and you’ll be surprised of the incredible and multiple ways that you might find to do it", Tips: " \n- As it is your first approach with the language, don’t try to do too much but focus on a specific topic of your liking and go for it! \n- Books and dictionaries a big source of information. \n- If you know where to find someone that speak the language, this is the right moment to give them a call and ask them to teach you! \n- You can find someone to do this activity with if you prefer, it can only make it funnier!"),
   Challenge(id: 2, challengeName: "Book a solo trip", points: 1200, currentlyTaking: 4, imageName: "trip", tags: ["Travel", "Learning", "Self Reliance"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum3", Tips: "-"),
   Challenge(id: 3, challengeName: "Become a Masterchef", points: 80, currentlyTaking: 4, imageName: "chef", tags: ["Cooking", "Self Confidence", "Skill"], Description: "The ‘take a cup of coffee with a stranger’ is a challenge based totally on working on the socializing and getting to know new people skill and also a little bit on trying new kinds of coffee in your area’s cafes?  As the title says, you have 24 hours to decide a cafe (maybe your favorite and usual one or one you have always wanted to try), go there and find someone to share a coffee with. It HAS TO be a total stranger, someone you don’t know. Maybe someone you see sitting there by themselves or someone who inspires you just as you walk into the cafè. You approach them, you drink coffee together and the rest should come by itself! Be proud of yourself, you met someone new and you’re probably drinking a really good coffee.", Tips: "Here there are some suggestions for you: - Approach them kindly and ask them if they’re okay with sharing some time with you. - Just move to the next person if they’re not available, it’s okay! - You can also ask it to a group of two/three people: the more the better! - You don’t necessarily have to drink coffee if you or the other person doesn’t feel like it; however having a warm cup in your hands might be nice! - Share your plans or your location with a friend or family so that they always know that you’re safe and keep them updated about where you are and if you are feeling comfortable enough to stay. - RELAX! You’re getting out of your comfort zone, it might not be the easiest thing to do but don’t forget to breathe and feel proud of yourself!"),
   Challenge(id: 4, challengeName: "Memorize a poem", points: 50, currentlyTaking: 4, imageName: "poem", tags: ["Skill", "Learning", "Academia", "Literature"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum5", Tips: "-"),
   Challenge(id: 5, challengeName: "Make eye contact", points: 90, currentlyTaking: 4, imageName: "eye", tags: ["Social", "Self Confidence"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum6", Tips: "-"),
   Challenge(id: 6, challengeName: "Hug 5 people", points: 400, currentlyTaking: 4, imageName: "hug", tags: ["Social", "Affection"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum7", Tips: "-"),
   Challenge(id: 7, challengeName: "Visit an animal shelter", points: 23, currentlyTaking: 230, imageName: "shelter", tags: ["Social", "Volunteering", "Fun"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum8", Tips: "-"),
   Challenge(id: 8, challengeName: "Have a photoshoot", points: 700, currentlyTaking: 4, imageName: "shoot", tags: ["Self Confidence", "Creativity", "Beauty", "Photography"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum9", Tips: "-"),
   Challenge(id: 9, challengeName: "Get lost", points: 925, currentlyTaking: 4, imageName: "lost", tags: ["Travel", "Critical Thinking", "Self Confidence"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum10", Tips: "-")
]
