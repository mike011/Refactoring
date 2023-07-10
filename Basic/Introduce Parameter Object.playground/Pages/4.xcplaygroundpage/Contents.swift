//: [Previous](@previous)

import Foundation

// 4. For each element of the new structure, replace the use of the original parameter with the element of the structure. Remove the parameter. Test.

struct DateRange {
    let startDate: Date
    let endDate: Date
}

func amountInvoiced(dateRange: DateRange) {}
func amountReceieved(dateRange: DateRange) {}
func amountOverdue(dateRange: DateRange) {}

//: [Next](@next)
