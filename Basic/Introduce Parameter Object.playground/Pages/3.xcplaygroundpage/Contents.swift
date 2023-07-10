//: [Previous](@previous)

import Foundation

// 3. Adjust each caller to pass in the correct instance of the new structure. Test after each one.

struct DateRange {
    let startDate: Date
    let endDate: Date
}

func amountInvoiced(startDate: Date, endDate: Date, dateRange: DateRange) {}
func amountReceieved(startDate: Date, endDate: Date, dateRange: DateRange) {}
func amountOverdue(startDate: Date, endDate: Date, dateRange: DateRange) {}

//: [Next](@next)
