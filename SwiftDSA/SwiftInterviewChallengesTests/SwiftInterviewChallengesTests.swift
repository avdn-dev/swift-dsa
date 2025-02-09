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
}
