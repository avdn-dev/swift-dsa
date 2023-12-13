import Cocoa

// EASY: Took about 1 minute
func challenge1(input: String) -> Bool {
    Set(input).count == input.count
}

assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")

// EASY: Completed in 3:49
// Could've used String initialiser instead of Array
func challenge2(input: String) -> Bool {
    String(input.lowercased().reversed()) == input.lowercased();
}

assert(challenge2(input: "rotator") == true)
assert(challenge2(input: "Rats live on no evil star") == true)
assert(challenge2(input: "Never odd or even") == false)
assert(challenge2(input: "Hello, world") == false)

// EASY: Completed in 2:15
func challenge3(input1: String, input2: String) -> Bool {
    input1.sorted() == input2.sorted()
}

assert(challenge3(input1: "abca", input2: "abca") == true)
assert(challenge3(input1: "abc", input2: "cba") == true)
assert(challenge3(input1: "a1 b2", input2: "b1 a2") == true)
assert(challenge3(input1: "abc", input2: "abca") == false)
assert(challenge3(input1: "abc", input2: "Abc") == false)
assert(challenge3(input1: "abc", input2: "cbAa") == false)
assert(challenge3(input1: "abcc", input2: "abca") == false)

// EASY: Took 29:18
// Had no clue about which method(s) of String was usable, mainly because I
// misinterpreted the fuzzy search as allowing matches even when the substring
// was not contained in order
extension String {
    func fuzzyContains(substring: String) -> Bool {
        self.range(of: substring, options: CompareOptions.caseInsensitive) != nil
    }
}

assert("Hello, world".fuzzyContains(substring: "Hello") == true)
assert("Hello, world".fuzzyContains(substring: "WORLD") == true)
assert("Hello, world".fuzzyContains(substring: "Goodbye") == false)

// EASY: Took 4:13 for solution with for loop, 9:17 for solution without using for loop
// (used filter instead)
func challenge5(input1: String, input2: Character) -> Int {
    return input1.filter { $0 == input2 }.count
    /*
    var count = 0;
    input1.forEach { count += $0 == input2 ? 1 : 0}
    return count
    */
}

assert(challenge5(input1: "The rain in Spain", input2: "a") == 2)
assert(challenge5(input1: "Mississippi", input2: "i") == 4)
assert(challenge5(input1: "Hacking with Swift", input2: "i") == 3)

// EASY: Took 6:38 for solution with for loop
func challenge6(input: String) -> String {
    var characters = Set(input)
    var output = ""
    for character in input {
        if characters.contains(character) {
            output.append(character)
            characters.remove(character)
        }
    }
    return output
}

assert(challenge6(input: "wombat") == "wombat")
assert(challenge6(input: "hello") == "helo")
assert(challenge6(input: "Mississippi") == "Misp")

// EASY: Completed in 21:14
func challenge7(input: String) -> String {
    var output = "";
    var foundSpace = false
    
    for character in input {
        if character == " " {
            if foundSpace { continue }
            foundSpace = true;
        } else {
            foundSpace = false;
        }
        output.append(character)
    }
    
    return output
}

assert(challenge7(input: "a   b   c") == "a b c")
assert(challenge7(input: "    a") == " a")
assert(challenge7(input: "abc") == "abc")

// TRICKY: Completed in 8:41
func challenge8(input1: String, input2: String) -> Bool {
    let doubleString = input1.appending(input1)
    return input1.count == input2.count && doubleString.range(of: input2) != nil
}

assert(challenge8(input1: "abcde", input2: "eabcd") == true)
assert(challenge8(input1: "abcde", input2: "cdeab") == true)
assert(challenge8(input1: "abcde", input2: "abced") == false)
assert(challenge8(input1: "abc", input2: "a") == false)

// TRICKY: Completed in 7:10
// Better solution was to use comparison operators
func challenge9(input: String) -> Bool {
    // String(Set(input.lowercased()).sorted()).trimmingCharacters(in: .whitespacesAndNewlines) == "abcdefghijklmnopqrstuvwxyz"
    Set(input.lowercased()).filter { $0 >= "a" && $0 <= "z"}.count == 26
}

assert(challenge9(input: "The quick brown fox jumps over the lazy dog") == true)
assert(challenge9(input: "The quick brown fox jumped over the lazy dog") == false)

// TRICKY: Completed in 6:53
func challenge10(input: String) -> (Int, Int) {
    let letterCount = input.filter { $0.isLetter }.count
    let vowels = input.lowercased().filter {
        if !$0.isLetter {
            return false
        }
        return $0 == "a" || $0 == "e" || $0 == "i" || $0 == "o" || $0 == "u"
    }.count
    return (vowels: vowels, consonants: letterCount - vowels)
}

assert(challenge10(input: "Swift Coding Challenges") == (6, 15))
assert(challenge10(input: "Mississippi") == (4, 7))

// TRICKY: Completed in 7:09
// Could've used enumerated method of array, and guard statement
func challenge11(input1: String, input2: String) -> Bool {
    guard input1.count == input2.count else {
        return false;
    }
    let array2 = Array(input2)
    var differentCount = 0;
    for (i, character) in input1.enumerated() {
        if character != array2[i] {
            differentCount += 1;
            if (differentCount > 3) {
                return false;
            }
        }
    }
    return true;
}

assert(challenge11(input1: "Clamp", input2: "Cramp") == true)
assert(challenge11(input1: "Clamp", input2: "Crams") == true)
assert(challenge11(input1: "Clamp", input2: "Grams") == true)
assert(challenge11(input1: "Clamp", input2: "Grans") == false)
assert(challenge11(input1: "Clamp", input2: "Clam") == false)
assert(challenge11(input1: "clamp", input2: "maple") == false)

// TRICKY: Completed in 15:27
// Didn't have error handling for empty string, suggested solution was much more succint but slower
func challenge12(input: String) -> String {
    var words: [String] = input.components(separatedBy: " ");
    words.sort { $0.count < $1.count };
    var longestPrefix = "";
    let secondWord = Array(words[1]);
    
    for (i, character) in words[0].enumerated() {
        if character == secondWord[i] {
            longestPrefix.append(character)
        } else {
            break;
        }
    }
    
    for i in 2..<words.count {
        if words[i].hasPrefix(longestPrefix) {
            continue;
        } else {
            longestPrefix = "";
            let secondWord = Array(words[i]);
            
            for (i, character) in words[i-1].enumerated() {
                if character == secondWord[i] {
                    longestPrefix.append(character)
                } else {
                    break;
                }
            }
        }
    }
    return longestPrefix;
}

assert(challenge12(input: "swift switch swill swim") == "swi")
assert(challenge12(input: "flip flap flop") == "fl")

// Completed in 14:39
func challenge13(input: String) -> String {
    guard input.count > 0 else { return "" }
    
    let array = Array(input);
    var output = ""
    output.append(array[0]);
    var c = array[0]
    var count = 1;
    
    for i in 1..<array.count {
        if array[i] != c {
            output.append(String(count))
            output.append(array[i])
            c = array[i]
            count = 1;
        } else {
            count += 1;
        }
    }
    output.append(String(count))
    return output
}

assert(challenge13(input: "aabbcc") == "a2b2c2")
assert(challenge13(input: "aaabaaabaaa") == "a3b1a3b1a3")
assert(challenge13(input: "aaAAaa") == "a2A2a2")

// Completed in 24:12
func challenge14(input: String, current: String = "") {
    guard input.count > 0 else {
        print(current)
        return
    }
    let array = Array(input)
    for (i, character) in array.enumerated() {
        challenge14(input: String(array[0..<i] + array[(i + 1)...]), current: current + String(character))
    }
}

challenge14(input: "a")
challenge14(input: "ab")
challenge14(input: "abc")
challenge14(input: "abcd")

// Completed in 8:15
func challenge15(input: String) -> String {
    let words = input.components(separatedBy: " ")
    let reversedWords = words.map { $0.reversed() }
    return String(reversedWords.joined(separator: " "))
}

assert(challenge15(input: "Swift Coding Challenges") == "tfiwS gnidoC segnellahC")
assert(challenge15(input: "The quick brown fox") == "ehT kciuq nworb xof")
