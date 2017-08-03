//: Playground - noun: a place where people can play

import Cocoa

/***************
   Variables
***************/

/*
 Exercise 1
 
 For each of the following names and types, create a variable or constant that best represents it:
 
 gallonsRemainingInTank (Double)
 ageOfSpecimenInWeeks (Int)
 birthplace (String)
 myFirstProgrammingLanguage (String)
 */

var gallonsRemainingInTank: String
let ageOfSpecimenInWeeks: Double
let birthplace: String
var myFirstProgrammingLanguage: String

/*
 Exercise 2
 
 Make the minimal changes necessary to fix the following compiler errors related to
 assignment, variables, and constants.
 */

var favoriteLanguage: String = "Swift"
gallonsRemainingInTank = "2"
ageOfSpecimenInWeeks = 32.45
myFirstProgrammingLanguage = "C++"
let bestProgrammingLanguage: String = myFirstProgrammingLanguage

/*
 Exercise 3
 
 Below is some code to reverse a string. We've declared stringToReverse and arrayOfCharacters as
 variables. Rewrite this code to reverse a string using only constants declared with let, no variables.
 Note: In the new version you may use as many constants as you'd like.
 */

let stringToReverse = "Mutable or Immutable? That is the question."
let arrayOfCharacters = stringToReverse.characters.reversed()
let reversedArrayOfCharacters = String(arrayOfCharacters)

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

/***************
    Strings
 ***************/

/*
 Exercise 5
 
 Write code that tells you whether or not this string contains the substring "ham".
 */

var word = "shampoo"
word.contains("ham")

/*
 Exercise 6
 
 Declare two strings and then use a single operator to concatenate them together to
 create a third string.
 */

var firstName = "John"
var lastName = "Doe"
var fullName = firstName + lastName

/*
 Exercise 7
 
 Write code that deletes all occurrences of the word "like" in the following string.
 */

let lottaLikes = "If like, you wanna learn Swift, like, you should build lots of small apps, cuz it's like, a good way to practice."

let noLikes = lottaLikes.replacingOccurrences(of: "like", with: "")

/*
 Exercise 8
 
 Josie has been saving her pennies and has them all counted up. Using string
 interpoltaion, write code that, given a number of pennies, prints out how much money
 Josie has in dollars and cents. Hint: The remainder operator , %, will come in
 handy.
 
 */

let numberOfPennies: Int = 150
var dollarsAndCents = "$\(numberOfPennies / 100).\(numberOfPennies % 100)"

/*
 Exercise 9
 
 Use string interpolation to replace the X with an expression for percent monthly earnings spent on rent.
 
 */

let averageMonthlyEarnings: Float = 2500
var averageRent: Float = 800
var percentOfMonthlyEarningsSpentOnRent = (averageRent/averageMonthlyEarnings) * 100
var weeklyEarningsString = "On average, millenials spend \(percentOfMonthlyEarningsSpentOnRent)% of their income on rent."

/***************
  If Statements
 ***************/

/*
 Exercise 10
 
 1. Write a function called rest() that prints out the following message: "Stay in bed."
 2. Declare a bool called sick with an initial value of true or false.
 3. Write a statement such that when sick is true the function rest() is called.
 */

func rest() {
    print("Stay in bed.")
}

var sick: Bool = true

if sick {
    rest()
}

/*
 Exercise 11
 
 1. Write a function called goToConcert() that prints out the following message: "That vocalist is
 incredible!"
 2. Declare two bools called finishedWork and gotTickets with initial values of true or false.
 3. Write a statement such that when both finishedWork and gotTickets are true the function
 goToConcert() is called.
 */

func goToConcert() {
    print("That vocalist is incredible!")
}

var finishedWork: Bool = true
var gotTickets: Bool = true

if finishedWork && gotTickets {
    goToConcert()
}

/*
 Exercise 12
 
 Congratulations! You got a new job! Your job is to review games and ensure that they pass certain
 criteria before they are released. The criteria are the following:
 
 has less than 10 bugs
 has music
 has more than 5 levels
 
 To complete this exercise:
 
 Write an if-statement to check if the current game can be released.
 Add your if statement to the function, checkForRelease(bugs: Int, music: Bool, levels: Int).
 If a game meets all three criteria, call the function release() within your if statement.
 If a game does not meet one of the criteria, print out a message indicating what needs to be fixed.
 
 To do this, you’ll have access to three variables: bugs, hasMusic, and numberOfLevels.
 
 Change the values of the variables and see how the output changes.
 */

func release() {
    print("Game is ready to be released.")
}

let MAX_BUGS_ALLOWED: Int = 10
let MIN_LEVELS_ALLOWED: Int = 5

func checkForRelease(bugs: Int, music: Bool, levels: Int) {
    if bugs < MAX_BUGS_ALLOWED && music==true && levels > MIN_LEVELS_ALLOWED {
        release()
    } else {
        if bugs > 9 {
            print("Fix number of bugs to less than 10.")
        }
        if !music {
            print("Add music to the game.")
        }
        if levels < 6 {
            print("Add more levels that add up to more than 5.")
        }
    }
}

// Test case 1: Yes release
print("--Test case 1: Yes release")

var bugs = 9
var music = true
var levels = 6
checkForRelease(bugs: bugs,music: music,levels: levels)

// Test case 2: No release due to bugs > 9
print("--Test case 2: No release due to bugs > 9")

bugs = 11
music = true
levels = 6
checkForRelease(bugs: bugs,music: music,levels: levels)

// Test case 3: No release due to music == false
print("--Test case 3: No release due to music == false")

bugs = 9
music = false
levels = 6
checkForRelease(bugs: bugs,music: music,levels: levels)

// Test case 4: No release due to levels < 6
print("--Test case 4: No release due to levels < 6")

bugs = 9
music = true
levels = 2
checkForRelease(bugs: bugs,music: music,levels: levels)

/*
 Exercise 13
 
 In this exercise, imagine you are training for a duathlon. We are going to write a program to check if
 you are physically prepared.
 
 We’ve defined three variables:
 
 name (name of trainee)
 canFinishBike (indicates if you can finish the bike portion)
 canFinishRun (indicates if you can finish the running portion)
 
 Your task is to write an if, else-if statement that checks if an athlete-in-training is ready for the
 duathlon:
 
 If a trainee can finish both components, the program should print out a message indicating that the
 person is ready.
 If a trainee is not ready, the program should print out each element (biking, running, or both) that
 they cannot finish.
 Write your if statement in the function, func checkTrainingStatus(name: canFinishBike: canFinishRun:).
 */

let name: String = "Teresa"
var canFinishBike: Bool = true
var canFinishRun: Bool = true

func checkTrainingStatus(name: String, bike: Bool, run: Bool) {
    if canFinishBike && canFinishRun {
        print("\(name) is ready!")
    } else {
        if !canFinishBike {
            print("\(name) cannot finish biking.")
        }
        if !canFinishRun {
            print("\(name) cannot finish running.")
        }
    }
}

// Test case 1: Yes release
print("--Test case 1: Yes ready")
checkTrainingStatus(name: name, bike: canFinishBike, run: canFinishRun)

// Test case 2: No release due to !canFinishBike
print("--Test case 2: No release due to !canFinishBike")
canFinishBike = false
checkTrainingStatus(name: name, bike: canFinishBike, run: canFinishRun)

// Test case 3: No release due to !canFinishRun
print("--Test case 3: No release due to !canFinishRun")
canFinishBike = true
canFinishRun = false
checkTrainingStatus(name: name, bike: canFinishBike, run: canFinishRun)


/***************
    Functions
 ***************/

//
//  Functions.swift
//
//
//  Created by Kenny Iraheta on 7/31/17.
//

import Foundation

/*
 Exercise 14
 
 The function emojiLove should take two String parameters and use them to print a String with the format "stringParameterOne ❤️ stringParameterTwo".
 */

func emojiLove (str1: String, str2: String) {
    print("\(str1)  ❤️  \(str2)")
}

var name1 = "Jon"
var name2 = "Jane"
emojiLove(str1: name1, str2: name2)


/*
 Exercise 15
 
 The function median should take three Int parameters and return the Int value in the middle.
 */

func median (x: Int, y: Int, z: Int) -> Int {
//    var numbers = [Int]()
//    numbers.append(x)
//    numbers.append(y)
//    numbers.append(z)
//    numbers.sort()
//    return numbers[1]
    return [x, y, z].sorted()[1]
}
// Test case: Median is 7
print("--Test case: Median is 7")
var a: Int = 1
var b: Int = 10
var c: Int = 7
print(median(x: a,y: b, z: c))

/*
 Exercise 16
 
 The function beginsWithVowel should take a single String parameter and return a Bool indicating
 whether the input string begins with a vowel. If the input string begins with a vowel return true,
 otherwise return false.
 
 First, you will want to test if the input string is "". If the input string is "", then return false.
 Otherwise, you can access the first character of a String by using
 nameOfString.characters[nameOfString.startIndex].
 
 Note: It is assumed that the input string is given in English.
 */

func beginsWithVowel(_ sentence: String) -> Bool {
    if sentence == "" {
        return false
    } else {
        let firstCharacter = sentence.characters[sentence.startIndex]
        if firstCharacter  == "a" || firstCharacter  == "A"{
            return true
        }
        else if firstCharacter  == "e" || firstCharacter  == "E"{
            return true
        }
        else if firstCharacter  == "i" || firstCharacter  == "I"{
            return true
        }
        else if firstCharacter  == "o" || firstCharacter  == "O"{
            return true
        }
        else if firstCharacter  == "u" || firstCharacter  == "U"{
            return true
        }
        else {return false}
    }
}

// Test case 1: Return false due to empty string
print("--Test case 1: Return false due to empty string")
var str: String = ""
print(beginsWithVowel(str))

// Test case 2: Return true due to string beginning with vowel
print("--Test case 2: Return true due to string beginning with vowel")
str = "Apples are yummy!"
print(beginsWithVowel(str))

// Test case 3: Return false due to string NOT beginning with vowel
print("--Test case 1: Return false due to string NOT beginning with vowel")
str = "Carrot juice is yummy!"
print(beginsWithVowel(str))

/*
 Exercise 17
 
 The function funWithWords should take a single String parameter and return a new
 String that is uppercased if it begins with a vowel or is lowercased if it begins
 with a consonant.
 
 To uppercase a String, use nameOfString.uppercased().
 To lowercase a String, use nameOfString.lowercased().
 It is assumed that the input string is given in English.
 
 Hint: Re-use the beginsWithVowel function.
 */

func funWithWords(_ str: String) -> String {
    if beginsWithVowel(str) == true {
        return str.uppercased()
    } else {
        return str.lowercased()
    }
}

print(funWithWords("Apples"))
print(funWithWords("pIG")) // "pig"
print(funWithWords("oink")) // "OINK"
print(funWithWords("udacity")) // "UDACITY"
print(funWithWords("")) // ""


