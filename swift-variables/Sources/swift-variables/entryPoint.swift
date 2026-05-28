// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct entryPoint {
    static func main() {
        variables()
        optionalVariables()
        list()
        set()
        mapDictionary()
        whileLoop()
        forLoop()
        ifCondition(value: 3)
        ifCondition(value: 7)
        switchCondition(value: 0)
        switchCondition(value: 1)
        switchCondition(value: 2)
        switchCondition(value: 10)
        switchCondition(value: -5)
        switchCondition(value: 4)
        switchCondition(value: 5)
        switchCondition(value: 10)
        switchCondition(value: 11)
        print("Is 3 odd? \(isOdd(value: 3))")
        print("Is 4 even? \(isEven(value: 4))")
        print("Factorial of 5: \(factorial(value: 5))")
        print("2 to the power of 3: \(power(base: 2, exponent: 3))")
        print("2 to the power of nil: \(power(base: 2, exponent: nil))")
    }
}
