//
//  SwiftInterviewChallengesTests.swift
//  SwiftInterviewChallengesTests
//
//  Created by Anh Nguyen on 9/2/2025.
//

import Testing
@testable import SwiftInterviewChallenges

struct FunTests {
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
}
