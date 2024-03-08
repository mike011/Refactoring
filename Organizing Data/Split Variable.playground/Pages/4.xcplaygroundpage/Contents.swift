//: [Previous](@previous)

import Foundation

// 4. Repeat in stages, at each stage renaming the variable at the declaration and changing references until the next assignment, until you reach the final assignment.

func printInfo(height: Int, width: Int) {
    var temp = 0
    let perimeter = 2 * (height + width)
    print(perimeter)
    let area = height * width
    print(area)
}
//: [Next](@next)
