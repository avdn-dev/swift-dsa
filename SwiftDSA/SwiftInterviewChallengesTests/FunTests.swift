//
//  FunTests.swift
//  SwiftInterviewChallengesTests
//
//  Created by Anh Nguyen on 9/2/2025.
//

import Testing
@testable import SwiftInterviewChallenges

@Suite("Fun Tests")
struct FunTests {
    @Test("Fun challenge 1: Fizz Buzz")
    func fizzBuzzz() {
        #expect(fizzBuzz(1) == "1")
        #expect(fizzBuzz(2) == "2")
        #expect(fizzBuzz(3) == "Fizz")
        #expect(fizzBuzz(4) == "4")
        #expect(fizzBuzz(5) == "Buzz")
        #expect(fizzBuzz(15) == "Fizz Buzz")
    }
    
    @Test("Fun challenge 2: Are the letters unique?")
    func uniqueLetters() {
        #expect(lettersAreUnique(in: "No duplicates"))
        #expect(lettersAreUnique(in: "abcdefghijklmnopqrstuvwxyz"))
        #expect(lettersAreUnique(in: "AaBbCc"))
        #expect(lettersAreUnique(in: "Hello, world") == false)
    }
    
    @Test("Fun challenge 3: Are the letter occurrences unique?")
    func uniqueLetterOccurences() {
        #expect(uniqueOccurrences(in: "ABBCCCDDDD"))
        #expect(uniqueOccurrences(in: "AABACCCABD"))
        #expect(uniqueOccurrences(in: "HELLO") == false)
        #expect(uniqueOccurrences(in: "HeLlO") == false)
    }
    
    @Test("Fun challenge 4: Needles in a haystack")
    func coundNeedles() {
        #expect(count(needles: "Aa", in: "ABACA") == 3)
        #expect(count(needles: "abc", in: "abcabc") == 6)
        #expect(count(needles: "a", in: "AAA") == 0)
    }
    
    @Test("Fun challenge 5: Is a string a palindrome?")
    func palindrome() {
        #expect(isPalindrome(string: "rotator"))
        #expect(isPalindrome(string: "Rats live on no evil star"))
        #expect(isPalindrome(string: "Never odd or even") == false)
        #expect(isPalindrome(string: "Hello, world") == false)
    }
    
    @Test("Fun challenge 6: Removing duplicate letters")
    func removingDuplicateLetters() {
        #expect(removeDuplicateCharacters(in: "wombat") == "wombat")
        #expect(removeDuplicateCharacters(in: "hello") == "helo")
        #expect(removeDuplicateCharacters(in: "Mississippi") == "Misp")
    }
    
    @Test("Fun challenge 7: Matching anagrams")
    func anagrams() {
        #expect(isAnagram("stone", for: "tones"))
        #expect(isAnagram("madam", for: "madam"))
        #expect(isAnagram("Madam", for: "madam") == false)
        #expect(isAnagram("hello", for: "world") == false)
    }
    
    @Test("Fun challenge 8: Count the numbers")
    func countNumbers() {
        #expect(count("5", in: [5, 15, 55, 515]) == 6)
        #expect(count("1", in: [5, 15, 55, 515]) == 2)
        #expect(count("5", in: [55555]) == 5)
        #expect(count("1", in: [55555]) == 0)
    }
    
    @Test("Fun challenge 9: Condense whitespace")
    func condenseSpaces() {
        #expect(condenseWhitespace(in: "a b c") == "a b c")
        #expect(condenseWhitespace(in: " a") == " a")
        #expect(condenseWhitespace(in: "abc") == "abc")
    }
    
    @Test("Fun challenge 10: Finding pangrams")
    func pangrams() {
        #expect(isPangram("The quick brown fox jumps over the lazy dog"))
        #expect(isPangram("The quick brown fox jumped over the lazy dog") == false)
    }
    
    @Test("Fun challenge 12: Sorting by frequency")
    func sortingByFrequency() {
        #expect(sortByFrequency([1, 1, 1, 2, 2, 3]) == [3, 2, 2, 1, 1, 1])
        #expect(sortByFrequency([1, 2, 1, 2, 3, 1]) == [3, 2, 2, 1, 1, 1])
        #expect(sortByFrequency([1, 1, 1, 1, 1, 1]) == [1, 1, 1, 1, 1, 1])
        #expect(sortByFrequency([3, 2, 1]) == [1, 2, 3])
    }
    
    @Test("Fun challenge 13: Square roots")
    func squareRoots() {
        #expect(sqrt(9) == 3)
        #expect(sqrt(16777216) == 4096)
        #expect(sqrt(16) == 4)
        #expect(sqrt(15) == 3)
    }
    
    @Test("Fun challenge 14: Matching socks")
    func matchingSocks() {
        let socks = [
            Sock(size: .large, color: .black, material: .wool),
            Sock(size: .large, color: .red, material: .wool),
            Sock(size: .medium, color: .black, material: .cotton),
            Sock(size: .small, color: .black, material: .cotton),
        ]
        
        #expect(count(socks, matching: \.color, value: .black) == 3)
        #expect(count(socks, matching: \.color, value: .red) == 1)
        #expect(count(socks, matching: \.size, value: .large) == 2)
    }
}
