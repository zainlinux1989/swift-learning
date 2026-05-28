func list(){
    var numbers: [Int] = [];
    print("Numbers: \(numbers)")

    numbers.append(1)
    numbers.append(2)
    numbers.append(3)
    numbers.append(4)
    numbers.append(5)

    print("Numbers after adding: \(numbers)")

    let distance = numbers.distance(from: 1, to: 3)
    print("Distance between elements: \(distance)")

    var names: [String] = ["Alice", "Bob", "Charlie"]
    print("Names: \(names)")

    names[1] = names[1].uppercased()
    print("Names after uppercasing: \(names)")

    if let first = names.first {
        print("First name: \(first)")
    }
    if let last = names.last {
        print("Last name: \(last)")
    }
}