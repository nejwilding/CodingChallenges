//: ## Coding Challenges
//:
import Foundation
import UIKit

//: Are letters Unique

// MARK: - Loop version - O(n) due to contains

func isUnique(input: String) -> Bool {
    var charArray = [Character]()
    
    for char in input.characters {
        if charArray.contains(char) {
            return false
        }
        
        charArray.append(char)
    }
    
    return true
}

assert(isUnique(input: "abcdefghijk") == true) // should be true
assert(isUnique(input: "aabcdefghijk") == false) // should be false
assert(isUnique(input: "AbCdefghijk") == true) // should be true
assert(isUnique(input: "AACdefghijk") == false) // should be false

// MARK: - More Functional version

func isUniqueTakeTwo(input: String) -> Bool {
    return Set(input.characters).count == input.characters.count
}

assert(isUniqueTakeTwo(input: "abcdefghijk") == true) // should be true
assert(isUniqueTakeTwo(input: "aabcdefghijk") == false) // should be false
assert(isUniqueTakeTwo(input: "AbCdefghijk") == true) // should be true
assert(isUniqueTakeTwo(input: "AACdefghijk") == false) // should be false