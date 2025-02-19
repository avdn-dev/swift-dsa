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

struct Sock {
    enum Size: String {
        case small, medium, large
    }
    enum Color: String {
        case white, black, red, blue
    }
    enum Material: String {
        case wool, cotton, silk
    }
    var size: Size
    var color: Color
    var material: Material
}

func count<V: Equatable>(_ socks: [Sock], matching keypath: KeyPath<Sock, V>, value: V) -> Int {
    socks.count {
        $0[keyPath: keypath] == value
    }
}

func reverse(_ input: inout [Int]) {
    var left = 0
    var right = input.count - 1
    while left < right {
        input.swapAt(left, right)
        left += 1
        right -= 1
    }
}

func sort(sentence: String) -> String {
    sentence.split(separator: " ")
        .sorted { $0.last! < $1.last! }
        .map { $0.dropLast() }
        .joined(separator: " ")
}

func longestPrefix(in string: String) -> String {
    let words = string.split(separator: " ")
    if words.isEmpty { return "" }
    var prefix = String(words.last!)
    
    for word in words.dropLast() {
        var currentPrefix = ""
        for (i, (character1, character2)) in zip(prefix, word).enumerated() {
            if i == prefix.count {
                break
            }
            if character1 == character2 {
                currentPrefix.append(character1)
            } else {
                break
            }
        }
        if currentPrefix.count < prefix.count {
            prefix = currentPrefix
        }
    }
    return prefix
}

func majorityValue(in nums: [Int]) -> Int {
    let majorityCount = (nums.count / 2) + (nums.count.isMultiple(of: 2) ? 0 : 1)
    var majority = nums[0]
    var count = 0
    for num in nums {
        if num == majority {
            count += 1
            if count == majorityCount {
                return majority
            }
        } else {
            count -= 1
            if count == 0 {
                majority = num
                count = 1
            }
        }
    }
    return majority
}

func numberIsCorrect(_ number: Int) -> Int {
    // The actual number you're trying
    // to guess could be anything; the
    // below is just an example.
    let actual = 320
    if number < actual {
        return -1
    } else if number > actual {
        return 1
    } else {
        return 0
    }
}

func guessNumber() -> Int {
    var low = 1
    var high = 1000
    while low <= high {
        let middle = low + ((high - low) / 2)
        switch numberIsCorrect(middle) {
        case 0:
            return middle
        case 1:
            high = middle - 1
        default:
            low = middle + 1
        }
    }
    return low
}

var logs = [String: Int]()
func log(message: String, time: Int) -> Bool {
    if let lastTime = logs[message] {
        if time < lastTime + 5 {
            return false
        }
    }
    
    print(message)
    logs[message] = time
    return true
}
