//
//  Strings.swift
//  
//
//  Created by Kenny Iraheta on 7/31/17.
//

import Foundation

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
