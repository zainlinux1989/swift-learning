func whileLoop() {
    var i = 0
    while i < 5 {
        print(i, terminator: " ")
        i += 1
    }
    print()
}

func forLoop() {
    let range = [10, 11, 12, 13, 14]
    for i in 0..<range.count {
        print(range[i], terminator: " ")
    }
    print()

    for i in 0..<5 {
        print(i, terminator: " ")
    }
    print()

    let fruits = ["Apple", "Banana", "Cherry"]

    for fruit in fruits {
        print(fruit)
    }
}

func ifCondition(value: Int) {
    if value > 5 {
        print("Number is greater than 5")
    } else {
        print("Number is not greater than 5")
    }
}

func switchCondition(value: Int) {
    switch value {
    case 0:
        print("Zero")
    case 1:
        print("One")
    case 2:
        print("Two")
    case 3...5:
        print("Three to Five")
    case let x where x > 1 && x < 10:
        print("Greater than one and less than ten")
    case let x where x < 0:
        print("Negative Number")
    case let x where x % 2 == 0:
        print("Even Number")
    case let x where x % 2 != 0:
        print("Odd Number")
    default:
        print("Other")
    }
}
