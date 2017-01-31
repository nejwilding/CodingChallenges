/*:
 [Previous](@previous)
 
 ### Are letters Unique

 Write me a function stringy that takes a size and returns a string of alternating '1s' and '0s'.
 the string should start with a 1.
 
 A string with size 6 should return :'101010'; with size 4 should return : '1010'; with size 12 should return : '101010101010'.
 
 The size will always be positive and will only use whole numbers.
 */
import Foundation
import UIKit

func stringy(_ size: Int) -> String {
    let value = size > 1 ? "10" : "1"
    let count = size > 1 ? size / 2 : size
    return String(repeating: value, count: count)
}

// MARK: - Tests
assert(stringy(1) == "1")
assert(stringy(2) == "10")
assert(stringy(4) == "1010")
assert(stringy(6) == "101010")
assert(stringy(12) == "101010101010")
assert(stringy(20) == "10101010101010101010")


// MARK: - More Functional Approach

func stringyTakeTwo(_ size: Int) -> String {
    let letters = (0 ..< size).map{ String(($0 + 1) % 2) }
    print(letters)
    return letters.joined()
}

// MARK: - Tests
assert(stringyTakeTwo(1) == "1")
assert(stringyTakeTwo(2) == "10")
assert(stringyTakeTwo(4) == "1010")
assert(stringyTakeTwo(6) == "101010")
assert(stringyTakeTwo(12) == "101010101010")
assert(stringyTakeTwo(20) == "10101010101010101010")



/*:
### Mumbling Letters

Write a function accum that takes a String and returns the letters in Title case of the String
 charachter and a count of charachters for the place the charachter is in the String.

A string of 'abcd' return :'A-Bb-Cccc-Dddd'
*/
func accum(_ s: String) -> String {
    let values = s.characters.enumerated().map({ (index, element) in
        return String(repeating: String(element), count: index + 1).capitalized
    }).joined(separator: "-")
    return values
}

// MARK: - Tests
assert(accum("abcd") == "A-Bb-Ccc-Dddd")
assert(accum("RqaEzty") ==  "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy")
assert(accum("cwAt") ==  "C-Ww-Aaa-Tttt")

//: [Next](@next)
