//: [Previous](@previous)

import Foundation

class Booking {
    private let date: Date
    private let show: Bool

    init(date: Date, show: Bool) {
        self.date = date
        self.show = show
    }
}

class PremiumBooking: Booking {
    private let extras: Bool

    init(date: Date, show: Bool, extras: Bool) {
        self.extras = extras
        super.init(date: date, show: show)
    }
}

//: [Next](@next)
