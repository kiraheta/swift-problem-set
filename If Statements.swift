//
//  If Statements.swift
//  
//
//  Created by Kenny Iraheta on 7/31/17.
//

import Foundation

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

func checkForRelease(bugs: Int, music: Bool, levels: Int) {
    if bugs < 10 && music==true && levels > 5 {
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
    //TODO: Add your if, else-if statement here!
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
