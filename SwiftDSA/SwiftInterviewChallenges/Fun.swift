//
//  Fun.swift
//  SwiftInterviewChallenges
//
//  Created by Anh Nguyen on 9/2/2025.
//

import Foundation

func sum<Number: Numeric>(_ nums: [Number]) -> Number {
    return nums.reduce(0, +)
}

func count(letter: Character, in word: String) -> Int {
    return word.filter { $0 == letter }.count
}
