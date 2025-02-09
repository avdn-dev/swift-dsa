//
//  SwiftInterviewChallengesTests.swift
//  SwiftInterviewChallengesTests
//
//  Created by Anh Nguyen on 9/2/2025.
//

import Testing
@testable import SwiftInterviewChallenges

@Suite("Practice challenge 1: Sum an array of numbers")
struct SumArrayNumbersTests {
    @Test func positiveInts() {
        let positiveInts = [1, 2, 3]
        #expect(sum(positiveInts) == 6)
    }
    
    @Test func negativeInts() {
        let negativeInts = [-1, -2, -3]
        #expect(sum(negativeInts) == -6)
    }
    
    @Test func positiveDoubles() {
        let positiveDoubles = [1.0, 2.0, 3.0]
        #expect(sum(positiveDoubles) == 6.0)
    }
    
    @Test func negativeDoubles() {
        let negativeDoubles = [-1.0, -2.0, -3.0]
        #expect(sum(negativeDoubles) == -6.0)
    }
}

@Suite("Practice challenge 2: Count the characters")
struct CountCharactersTests {
    @Test func countCharacters() {
        #expect(count(letter: "a", in: "The rain in Spain") == 2)
        #expect(count(letter: "i", in: "Mississippi") == 4)
        #expect(count(letter: "i", in: "Hacking with Swift") == 3)
    }
}

@Suite("Practice challenge 3: Sort a string array by length")
struct SortByLengthTests {
    @Test func sortStrngs() {
        #expect(sortByLength(["a", "abc", "ab"]) == ["abc", "ab", "a"])
        #expect(sortByLength(["paul", "taylor", "adele"]) == ["taylor", "adele", "paul"])
        #expect(sortByLength([]) == [])
    }
}
