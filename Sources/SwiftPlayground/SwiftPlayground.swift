// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        //Task 1 - 
        // The price per each item.
        let pricePerItem: Double = 19.99 
        // The total amount of items bought.
        let quantity: Double = 3.0 
        //The total cost of all items prior to GST tax.
        let subTotal: Double = (pricePerItem * quantity)
        // The total tax cost of all items, which is 15% of the subtotal
        let tax: Double = (pricePerItem * quantity * 0.15) 
        // The subtotal plus the GST tax cost, as calculated in the previous statement.
        let totalPrice: Double = (subTotal + tax) 

        print("Price per item: $\(pricePerItem)")
        print("Quantity: \(quantity)")
        print("Subtotal: $\(subTotal)")
        print("Tax (15%): $\(tax)")
        print("Total: $\(totalPrice)")

        //Task 2 - Rectangle 
        // The length of the rectangle.
        let rectLength: Double = 12.5 
        // The width of the rectangle.
        let rectWidth: Double = 8 
        // Calculate the area of the rectangle by width times height.
        let rectArea: Double = (rectWidth * rectLength) 
        //Calculate the perimter by adding the width and length together * 2
        let rectPerimeter: Double = 2 * (rectLength + rectWidth) 

        print("The length of the rectangle is \(rectLength) units.")
        print("The width of the rectangle is \(rectWidth) units.")
        print("The area of the rectangle is \(rectArea) square units.")
        print("The perimeter of the rectangle is \(rectPerimeter) units.")


    }

}