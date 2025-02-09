//
//  Fun.swift
//  SwiftInterviewChallenges
//
//  Created by Anh Nguyen on 9/2/2025.
//

import Foundation

func fizzBuzz(_ n: Int) -> String {
    if n.isMultiple(of: 15) {
        "Fizz Buzz"
    } else if n.isMultiple(of: 5) {
        "Buzz"
    } else if n.isMultiple(of: 3) {
        "Fizz"
    } else {
        String(n)
    }
}

func lettersAreUnique(in string: String) -> Bool {
    Set(string).count == string.count
}

func uniqueOccurrences(in string: String) -> Bool {
    let counts = Dictionary(grouping: string) { $0 }.values.map { $0.count }
    return Set(counts).count == counts.count
}

func count(needles: String, in haystack: String) -> Int {
    var occurences = 0
    let needlesSet = Set(needles)
    for character in haystack {
        if needlesSet.contains(character) {
            occurences += 1
        }
    }
    return occurences
}
