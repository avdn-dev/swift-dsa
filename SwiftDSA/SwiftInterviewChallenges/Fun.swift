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

func sortByLength(_ array: [String]) -> [String] {
    return array.sorted { $0.count > $1.count }
}

func areCharactersIdentical(in string1: String, and string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}
