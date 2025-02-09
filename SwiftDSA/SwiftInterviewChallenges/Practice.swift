//
//  Practice.swift
//  SwiftInterviewChallenges
//
//  Created by Anh Nguyen on 9/2/2025.
//

import Foundation

func sum<Number: Numeric>(_ nums: [Number]) -> Number {
    nums.reduce(0, +)
}

func count(letter: Character, in word: String) -> Int {
    word.filter { $0 == letter }.count
}

func sortByLength(_ array: [String]) -> [String] {
    array.sorted { $0.count > $1.count }
}

func areCharactersIdentical(in string1: String, and string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

extension Collection where Element: Comparable {
    func smallest(_ n: Int) -> [Element] {
        Array(self.sorted().prefix(n))
    }
}

class Node<Value> {
    var value: Value
    var left: Node?
    var right: Node?
    
    init(_ value: Value) {
        self.value = value
    }
    
    func traverse(_ closure: (Node<Value>) -> Void) {
        left?.traverse(closure)
        closure(self)
        right?.traverse(closure)
    }
}
