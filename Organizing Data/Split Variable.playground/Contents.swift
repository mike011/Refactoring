struct Invoice {
    let name: String
}
func printBanner() {}
func calculateOutstanding() -> Double {return 0.0}
func printDetails(invoice: Invoice, outstanding: Double) {
    print("name: \(invoice.name)")
    print("amount: \(outstanding)")
}

func printOwing(invoice: Invoice) {
    printBanner()
    let outstanding = calculateOutstanding()

    printDetails(invoice: invoice, outstanding: outstanding)
}




