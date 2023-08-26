//: [Previous](@previous)

import Foundation

// 2. Use Extract Function on the function body to create the new function.

func circum(radius: Double) -> Double {
    return circumference(radius: radius)
}
func circumference(radius: Double) -> Double {
    return 2 * Double.pi * radius
}

print(circum(radius: 25))

//: [Next](@next)
