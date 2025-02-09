//
//  FunTests.swift
//  SwiftInterviewChallengesTests
//
//  Created by Anh Nguyen on 9/2/2025.
//

import Testing
@testable import SwiftInterviewChallenges

@Suite("Fun Tests")
struct FunTests {
    @Test("Fun challenge 1: Fizz Buzz")
    func fizzBuzzz() {
        #expect(fizzBuzz(1) == "1")
        #expect(fizzBuzz(2) == "2")
        #expect(fizzBuzz(3) == "Fizz")
        #expect(fizzBuzz(4) == "4")
        #expect(fizzBuzz(5) == "Buzz")
        #expect(fizzBuzz(15) == "Fizz Buzz")
    }
    
    @Test("Fun challenge 2: Are the letters unique?")
    func uniqueLetters() {
        #expect(lettersAreUnique(in: "No duplicates"))
        #expect(lettersAreUnique(in: "abcdefghijklmnopqrstuvwxyz"))
        #expect(lettersAreUnique(in: "AaBbCc"))
        #expect(lettersAreUnique(in: "Hello, world") == false)
    }
    
    @Test("Fun challenge 3: Are the letter occurrences unique?")
    func uniqueLetterOccurences() {
        #expect(uniqueOccurrences(in: "ABBCCCDDDD"))
        #expect(uniqueOccurrences(in: "AABACCCABD"))
        #expect(uniqueOccurrences(in: "HELLO") == false)
        #expect(uniqueOccurrences(in: "HeLlO") == false)
    }
    
    @Test("Fun challenge 4: Needles in a haystack")
    func coundNeedles() {
        #expect(count(needles: "Aa", in: "ABACA") == 3)
        #expect(count(needles: "abc", in: "abcabc") == 6)
        #expect(count(needles: "a", in: "AAA") == 0)
    }
    
    @Test("Fun challenge 5: Is a string a palindrome?")
    func palindrome() {
        #expect(isPalindrome(string: "rotator"))
        #expect(isPalindrome(string: "Rats live on no evil star"))
        #expect(isPalindrome(string: "Never odd or even") == false)
        #expect(isPalindrome(string: "Hello, world") == false)
    }
    
    @Test("Fun challenge 6: Removing duplicate letters")
    func removingDuplicateLetters() {
        #expect(removeDuplicateCharacters(in: "wombat") == "wombat")
        #expect(removeDuplicateCharacters(in: "hello") == "helo")
        #expect(removeDuplicateCharacters(in: "Mississippi") == "Misp")
    }
    
    @Test("Fun challenge 7: Matching anagrams")
    func anagrams() {
        #expect(isAnagram("stone", for: "tones"))
        #expect(isAnagram("madam", for: "madam"))
        #expect(isAnagram("Madam", for: "madam") == false)
        #expect(isAnagram("hello", for: "world") == false)
    }
}
