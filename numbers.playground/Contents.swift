import Cocoa

// Completed in 3:08
func challenge16() {
    for i in 1...100 {
        switch (i.isMultiple(of: 3), i.isMultiple(of: 5)) {
        case (true, true):
            print("Fizzbuzz")
        case (true, false):
            print("Fizz")
        case (false, true):
            print("Buzz")
        case (false, false):
            print(i)
        }
    }
}

challenge16()

// Completed in 2:27
func challenge17(minimum: Int, maximum: Int) -> Int {
    Int.random(in: minimum...maximum)
}

print(challenge17(minimum: 1, maximum: 5))
print(challenge17(minimum: 8, maximum: 10))
print(challenge17(minimum: 12, maximum: 12))
print(challenge17(minimum: 12, maximum: 18))

// Took about 4 minutes
func challenge18(base: Int, exponent: Int) -> Int {
    var result = base
    for _ in 2...exponent {
        result *= base
    }
    return result
}

assert(challenge18(base: 4, exponent: 3) == 64)
assert(challenge18(base: 2, exponent: 8) == 256)

// Completed in 1:40
func challenge19( a: inout Int, b: inout Int) {
    (a, b) = (b, a)
}

var (a, b) = (1, 2)
challenge19(a: &a, b: &b)
assert(a == 2 && b == 1)

// Completed in 5:41
func challenge20(input: Int) -> Bool {
    guard input > 1 else { return false }
    for i in 2...(Int(sqrt(Double(input))) + 1) {
        if input.isMultiple(of: i) {
            return false
        }
    }
    return true
}

assert(challenge20(input: 11) == true)
assert(challenge20(input: 13) == true)
assert(challenge20(input: 4) == false)
assert(challenge20(input: 9) == false)
assert(challenge20(input: 16777259) == true)

// Completed in 15:24
func challenge21(input: Int) -> (Int?, Int?) {
    let binaryString = String(input, radix: 2)
    let countOfOnes = binaryString.filter { $0 == "1"}.count
    var nextHighest: Int? = nil
    var nextLowest: Int? = nil
    for i in (input + 1)...Int.max {
        if String(i, radix: 2).filter({ $0 == "1"}).count == countOfOnes {
            nextHighest = i;
            break;
        }
    }
    for i in (0...(input - 1)).reversed() {
        if String(i, radix: 2).filter({ $0 == "1"}).count == countOfOnes {
            nextLowest = i;
            break;
        }
    }
    return (nextHighest, nextLowest)
}

assert(challenge21(input: 12).0! == 17 && challenge21(input: 12).1! == 10)
assert(challenge21(input: 28).0! == 35 && challenge21(input: 28).1! == 26)

// Completed in 10:38
func challenge22(input: UInt8) -> UInt8 {
    var binaryString = String(input, radix: 2)
    let numPaddedZeros = 8 - binaryString.count
    let binaryReversedString = String(binaryString.reversed()).appending(String.init(repeating: "0", count: numPaddedZeros))
    return UInt8(binaryReversedString, radix: 2)!
}

assert(challenge22(input: 32) == 4)
assert(challenge22(input: 41) == 148)
assert(challenge22(input: 4) == 32)
assert(challenge22(input: 148) == 41)

// Completed in 1:30
func challenge23(input: String) -> Bool {
    input.allSatisfy { $0.isNumber }
}

assert(challenge23(input: "٢") == true)
assert(challenge23(input: "01010101") == true)
assert(challenge23(input: "123456789") == true)
assert(challenge23(input: "9223372036854775808") == true)
assert(challenge23(input: "1.01") == false)

// Completed in 7:30
func challenge24(input: String) -> Int {
    var sum = 0
    var num = ""
    for character in input {
        if character.isNumber {
            num += String(character)
        } else {
            sum += Int(num) ?? 0
            num = ""
        }
    }
    sum += Int(num) ?? 0
    return sum
}

assert(challenge24(input: "a1b2c3") == 6)
assert(challenge24(input: "a10b20c30") == 60)
assert(challenge24(input: "h8ers") == 8)

// Completed in 10:28
// Could've used the pow function here
func challenge25(input: Int) -> Int {
    var (lower, upper) = (1, input)
    while lower < upper {
        let middle = lower + (upper - lower) / 2
        if input / middle == middle {
            lower = middle
        } else {
            upper = middle
        }
    }
    return input / upper == upper ? lower : upper
}

assert(challenge25(input: 9) == 3)
assert(challenge25(input: 16777216) == 4096)
assert(challenge25(input: 16) == 4)
assert(challenge25(input: 15) == 3)
assert(challenge25(input: 1) == 1)
assert(challenge25(input: 2) == 1)

// Completed in 12:47
// Solutions are a bit of a cheese since all of them except the bitwise operation have a - in them
func challenge26(subtract: Int, from: Int) -> Int {
    from + (~subtract + 1);
}

assert(challenge26(subtract: 5, from: 9) == 4)
assert(challenge26(subtract: 10, from: 30) == 20)
