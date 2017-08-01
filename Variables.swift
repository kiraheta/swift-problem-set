//
//  Variables.swift
//  
//
//  Created by Kenny Iraheta on 7/31/17.
//

import Foundation

/*
 Exercise 1
 
 For each of the following names and types, create a variable or constant that best represents it:
 
 gallonsRemainingInTank (Double)
 ageOfSpecimenInWeeks (Int)
 birthplace (String)
 myFirstProgrammingLanguage (String)
 */

var gallonsRemainingInTank: Double
let ageOfSpecimenInWeeks: Int
let birthplace: String
var myFirstProgrammingLanguage: String

/*
 Exercise 2
 
 Make the minimal changes necessary to fix the following compiler errors related to
 assignment, variables, and constants.
 */

var favoriteLanguage: String = "Swift"
var gallonsRemainingInTank = "2"
let ageOfSpecimenInWeeks = 32.45
let bestProgrammingLanguage: String = myFirstProgrammingLanguage

/*
 Exercise 3
 
 Below is some code to reverse a string. We've declared stringToReverse and arrayOfCharacters as
 variables. Rewrite this code to reverse a string using only constants declared with let, no variables.
 Note: In the new version you may use as many constants as you'd like.
 */

let stringToReverse = "Mutable or Immutable? That is the question."
let arrayOfCharacters = stringToReverse.characters.reversed()
reversedArrayOfCharacters = String(arrayOfCharacters)

/*
Exercise 4

For the following descriptions, create a variable or constant that best represents it:

an Int value representing the hunger level of an animal over time.
an Int value representing the score always required to win a game.
a String value representing a student’s birthday.
a String value representing what a user types into the status update area.
*/

var animalHungerLevel: Int
let winningScore: Int
let studentBirthday: String
var statusUpdate: String
