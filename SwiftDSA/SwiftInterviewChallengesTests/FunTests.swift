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
}

