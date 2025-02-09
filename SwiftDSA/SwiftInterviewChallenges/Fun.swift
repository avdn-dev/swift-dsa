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

func isPalindrome(string: String) -> Bool {
    String(string.lowercased().reversed()) == string.lowercased()
}

func removeDuplicateCharacters(in string: String) -> String {
    let orderedUniqueLetters = NSOrderedSet(array: Array(string))
    return String(orderedUniqueLetters.array as! [Character])
}

func isAnagram(_ string1: String, for string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

func count(_ digit: Character, in numbers: [Int]) -> Int {
    numbers.map(String.init).reduce(0) { currentCount, numberString in
        currentCount + numberString.count { $0 == digit }
    }
}

func condenseWhitespace(in string: String) -> String {
    var condensedString = [Character]()
    var seenSpace = false
    for character in string {
        if character == " " && !seenSpace {
            seenSpace = true
            condensedString.append(character)
        } else if character != " " {
            seenSpace = false
            condensedString.append(character)
        }
    }
    return String(condensedString)
}

func isPangram(_ string: String) -> Bool {
    Array("abcdefghijklmnopqrstuvwxyz").allSatisfy { Set(string.lowercased()).contains($0) }
}

func createFunction() -> (String) -> Void {
    { print($0) }
}

func sortByFrequency<T: Comparable & Hashable>(_ array: [T]) -> [T] {
    let counts = Dictionary(grouping: array) { $0 }.mapValues { $0.count }
    return array.sorted {
        if counts[$0]! == counts[$1]! {
            $0 < $1
        } else {
            counts[$0]! < counts[$1]!
        }
    }
}

func sqrt(_ num: Int) -> Int {
    var left = 0
    var right = num / 2
    var root: Int?
    while left < right {
        let middle = right - ((right - left) / 2)
        let square = middle * middle
        if square == num {
            root = middle
            break
        } else if square < num {
            left = middle + 1
        } else {
            right = middle - 1
        }
    }
    return root ?? left
}
