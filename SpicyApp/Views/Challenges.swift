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
   Challenge(id: 0, challengeName: "Take a cup of coffee with a stranger", points: 250, currentlyTaking: 4, imageName: "coffee1", tags: ["Cheap", "Social", "Surroundings"], Description: "The ‘take a cup of coffee with a stranger’ is a challenge based on working on the socializing and getting to know new people skill and also a little bit on trying new kinds of coffee in your area’s cafes! \nYou have 24 hours to decide a cafe (maybe your favorite and usual one or one you have always wanted to try), go there and find someone to share a coffee with. \n\nIt HAS TO be a total stranger, someone you don’t know. Maybe someone you see sitting there by themselves or someone who inspires you just as you walk into the cafè. \nYou approach them, you drink coffee together and the rest should come by itself! Be proud of yourself, you met someone new and you’re probably drinking a really good coffee.", Tips: "Here there are some suggestions for you: \n\n 👍 Approach them kindly and ask them if they’re okay with sharing some time with you. Just move to the next person if they’re not available, it’s okay! \n\n 🥳 You can also ask it to a group of two/three people: the more the better! \n\n ☕️ You don’t necessarily have to drink coffee if you or the other person doesn’t feel like it; however having a warm cup in your hands might be nice! \n\n 📍 Share your plans or your location with a friend or family so that they always know that you’re safe and keep them updated about where you are and if you are feeling comfortable enough to stay. \n\n 💆 RELAX! You’re getting out of your comfort zone, it might not be the easiest thing to do but don’t forget to breathe and feel proud of yourself!" ),
   Challenge(id: 1, challengeName: "Learn a new language without using Internet", points: 100, currentlyTaking: 4, imageName: "languageimage", tags: ["Fun", "Knowledge", "Self-taught"], Description: "Have you ever wondered how people used to learn new languages before Internet? \nYes? No? Because this is exactly what you’re going to experience today with this challenge! \nAll you need to do is to turn all your devices’ internet connection off and start working for it! You want to learn Spanish salutations? Or maybe Russian food’s names? Ever thought of Italian common sayings? \nJust choose one language that you really want to master and you’ll be surprised of the incredible and multiple ways that you might find to do it", Tips: "📖 As it is your first approach with the language, don’t try to do too much but focus on a specific topic of your liking and go for it! \n 📚 Books and dictionaries a big source of information. \n 👥 If you know where to find someone that speak the language, this is the right moment to give them a call and ask them to teach you! \n 🤝 You can find someone to do this activity with if you prefer, it can only make it funnier!" ),
   Challenge(id: 2, challengeName: "Read a poem written by an ancient writer and try to memorize it", points: 1200, currentlyTaking: 4, imageName: "poem1", tags: ["Culture", "Learning", "Memorization"], Description: "Looks like today you’re challenging yourself to learn a Catullo’s poem? Or maybe a Shakespeare’s? Should it be about love or revenge? Who knows? You choose it! You have one day to read one ancient poem and try to memorize it. \n Why? It’s part of literature culture, and it could make a nice quote on your next post on a social media! \nWhat you need to do is easy: choose a writer, choose one poem and make it yours!", Tips: "🔍 You can look for the poem on old school books or on the Internet. \n 📜 Most of them are in an older version of the modern language they belong to: don’t make this stop you, this is the best part of this! \n 📝 A good way to memorize it is to write it down on a paper and have it always with you. \n 🗣️ Have someone to listen to you when you’re done, it might help you feel more confident and sure." ),
   Challenge(id: 3, challengeName: "Prepare a difficult dish from another country cuisine", points: 80, currentlyTaking: 4, imageName: "chef", tags: ["Cooking", "Self Confidence", "Skill"], Description: "Today you are a starred chef and you want to prepare one of the most difficult dish of your life but it’s not from your country culture. Is it from Indian cuisine? Maybe Japanese? Or Italian? You have 24h to decide it, find all the ingredients that you need and realize it by yourself! Make sure to make it tasty, you will have to try it later.", Tips: " \n 🔍 You can find the recipe online, or on a book, or by one of your friends’ nanny! It’s up to you! \n 🤝 You can ask someone to help you in the preparation. \n 🌟 If you don’t find all the ingredients in your local supermarket, go for a revisited version of it. You’re a starred chef after all, right?  \n 📌 Disclaimer: make sure you’re in the conditions to handle the ingredients of the recipe you choose and that you’re not allergic or intolerant."),
   Challenge(id: 4, challengeName: "Go to an animal shelter and spend some time getting to know the pets there", points: 50, currentlyTaking: 4, imageName: "shelter", tags: ["Animal", "Caring", "Fun Time"], Description: "Did you know that a lot of animal shelters accept people to spend time with the pets that live there? If not, today is the right day to experience this! You have one whole day to find an animal shelter in your area and go spend some time with rescued animals. They need love and attention and are surely ready to give it back to whoever is there!", Tips: "🐶 Animals are lovely but make sure to follow their rescuers instructions on how to deal with them. \n 👥 Bring some friends with you, it is a nice moment to share with someone who also loves animals. \n 📌 Disclaimer: make sure you’re in the conditions to stay near animals and that you’re not allergic/intolerant."),
   Challenge(id: 5, challengeName: "Dress up in your fanciest outfit and have a photoshoot.", points: 90, currentlyTaking: 4, imageName: "shoot", tags: ["Social", "Self Confidence", "Photography"], Description: "Have you ever wondered how is it to be a top model for one day? This is the day you’re finding out. How? You have 24h to put your favorite and fanciest outfit on and have a photoshoot. Invent poses, take inspiration from existing ones or ask someone else to suggest them to you. Could be in your own house, in the nearby park or in a studio. Alone or with someone else? You’re the star, you decide.", Tips: " 📸 You can ask someone to help you with taking the photos or to be in them with you. They could even become good memories to keep! \n 🧥 Nobody can tell you more than yourself which outfit is nicer and fits better on you. It could be sweatpants or a princess dress, this is your photoshoot! \n 💫 Don’t feel shy or don’t tell yourself you’re not photogenic: get out of your comfort zone, stand out, be proud of yourself. \n 🤳 If you find it difficult or you feel stuck, you can also choose a theme that inspires to just start with or to base your whole photoshoot on."),
   Challenge(id: 6, challengeName: "Go for a solo trip", points: 400, currentlyTaking: 4, imageName: "trip", tags: ["Self-care", "Time", "Trip"], Description: "What is more fascinating and intriguing of going a trip with yourself? You choose the place, you choose how to get there, you choose when and what kind of trip to go for: it’s totally up to you. Could be a chance to visit the seaside or go trekking on the mountain. Could be a walk in the snow or a cycling route in the wild nature. Whatever your mind come up with, you’re allowed to say yes with this challenge! Indeed you have one day to think about it and at the end of the 24h you should have a whole trip planned. Next step: packing up!", Tips: "💆 Think of something that you have wanted to do and that is also affordable and feasible for you and your life routine. \n 🐶 You can take your pet with you, but remember to take some time with yourself and yourself only! \n 📍 Share your plans and, if possible, location with friends or family to keep them updated about you and to let them know that you’re safe."),
   Challenge(id: 7, challengeName: "Visit an animal shelter", points: 23, currentlyTaking: 230, imageName: "shelter", tags: ["Social", "Volunteering", "Fun"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum8", Tips: "-"),
   Challenge(id: 8, challengeName: "Have a photoshoot", points: 700, currentlyTaking: 4, imageName: "shoot", tags: ["Self Confidence", "Creativity", "Beauty", "Photography"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum9", Tips: "-"),
   Challenge(id: 9, challengeName: "Get lost", points: 925, currentlyTaking: 4, imageName: "lost", tags: ["Travel", "Critical Thinking", "Self Confidence"], Description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum10", Tips: "-")
]
