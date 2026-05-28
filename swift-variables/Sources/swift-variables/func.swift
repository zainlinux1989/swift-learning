func isOdd(value: Int) -> Bool {
    return value % 2 != 0
}

func isEven(value: Int) -> Bool {
    return value % 2 == 0
}

func factorial(value: Int) -> Int {
    if value == 0 {
        return 1
    } else {
        return value * factorial(value: value - 1)
    }
}

func power(base: Int, exponent: Int?) -> Int {
    guard let exponent = exponent else {
        return 1
    }
    if exponent == 0 {
        return 1
    } else {
        return base * power(base: base, exponent: exponent - 1)
    }
}
