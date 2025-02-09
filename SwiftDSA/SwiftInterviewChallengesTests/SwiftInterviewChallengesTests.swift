//
//  SwiftInterviewChallengesTests.swift
//  SwiftInterviewChallengesTests
//
//  Created by Anh Nguyen on 9/2/2025.
//

import Testing
@testable import SwiftInterviewChallenges

@Suite("Fun Tests")
struct FunTests {
    @Test("Practice challenge 1: Sum an array of numbers")
    func sumNumbers() {
        let positiveInts = [1, 2, 3]
        #expect(sum(positiveInts) == 6)
        
        let negativeInts = [-1, -2, -3]
        #expect(sum(negativeInts) == -6)
        
        let positiveDoubles = [1.0, 2.0, 3.0]
        #expect(sum(positiveDoubles) == 6.0)
        
        let negativeDoubles = [-1.0, -2.0, -3.0]
        #expect(sum(negativeDoubles) == -6.0)
    }
    
    @Test("Practice challenge 2: Count the characters")
    func countCharacters() {
        #expect(count(letter: "a", in: "The rain in Spain") == 2)
        #expect(count(letter: "i", in: "Mississippi") == 4)
        #expect(count(letter: "i", in: "Hacking with Swift") == 3)
    }
    
    @Test("Practice challenge 3: Sort a string array by length")
    func sortStrings() {
        #expect(sortByLength(["a", "abc", "ab"]) == ["abc", "ab", "a"])
        #expect(sortByLength(["paul", "taylor", "adele"]) == ["taylor", "adele", "paul"])
        #expect(sortByLength([]) == [])
    }
    
    @Test("Practice challenge 4: Do two strings contain the same characters?")
    func stringsContainSameCharacters() {
        #expect(areCharactersIdentical(in: "abca", and: "abca"))
        #expect(areCharactersIdentical(in: "abc", and: "cba"))
        #expect(areCharactersIdentical(in: "a1 b2", and: "b1 a2"))
        #expect(areCharactersIdentical(in: "abc", and: "abca") == false)
        #expect(areCharactersIdentical(in: "abcc", and: "abca") == false)
        #expect(areCharactersIdentical(in: "abc", and: "Abc") == false)
    }
    
    @Test("Practice challenge 5: Find n smallest")
    func nSmallest() {
        #expect([1, 2, 3, 4].smallest(3) == [1, 2, 3])
        #expect(["q", "f", "k"].smallest(3) == ["f", "k", "q"])
        #expect([256, 16].smallest(3) == [16, 256])
        #expect([String]().smallest(3) == [])
    }
}
