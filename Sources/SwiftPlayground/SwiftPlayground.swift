// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        //Task 1

        let pricePerItem: Double = 19.99 // The price per each item.
        let quantity: Double = 3.0 // The total amount of items bought.
        let subTotal: Double = (pricePerItem * quantity) //The total cost of all items prior to GST tax.
        let tax: Double = (pricePerItem * quantity * 0.15) // The total tax cost of all items, which is 15% of the subtotal
        let totalPrice: Double = (subTotal + tax) // The subtotal plus the GST tax cost, as calculated in the previous statement.

        print("Price per item: $\(pricePerItem)")
        print("Quantity: \(quantity)")
        print("Subtotal: $\(subTotal)")
        print("Tax (15%): $\(tax)")
        print("Total: $\(totalPrice)")

        //Task 2
        let rectLength: Double = 12.5 // The length of the rectangle.
        let rectWidth: Double = 8 // The width of the rectangle.
        let rectArea: Double = (rectWidth * rectLength) // Calculate the area of the rectangle by width times height.
        let rectPerimeter: Double = 2 * (rectLength + rectWidth) //Calculate the perimter by adding the width and length together * 2

        print("The length of the rectangle is \(rectLength) units.")
        print("The width of the rectangle is \(rectWidth) units.")
        print("The area of the rectangle is \(rectArea) square units.")
        print("The perimeter of the rectangle is \(rectPerimeter) units.")


    }

}