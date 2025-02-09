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
}

