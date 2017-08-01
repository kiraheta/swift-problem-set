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
    var numbers = [Int]()
    numbers.append(x)
    numbers.append(y)
    numbers.append(z)
    numbers.sort()
    return numbers[1]
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
