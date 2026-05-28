func set(){
    let uniqueNumbers: Set<Int> = [1,2,3,4,5,5,5,2,1,1,1,1,3]

    print("Unique numbers: \(uniqueNumbers)")

    let names: [String] = ["Alice", "Bob", "Charlie", "Alice", "Bob", "Charlie", "Alice", "Bob", "Charlie"]

    let uniqueNames: Set<String> = Set(names)
    print("Unique names: \(uniqueNames)")
}

func mapDictionary(){
    let nameToAge: [String: Int] = ["Alice": 30, "Bob": 25, "Charlie": 35]
    print("Name to age mapping: \(nameToAge)")

    if let aliceAge: Int = nameToAge["Alice"] {
        print("Alice's age: \(aliceAge)")
    }

    var mutableNameToAge: [String: Int] = nameToAge
    mutableNameToAge["David"] = 28
    print("Updated name to age mapping: \(mutableNameToAge)")
}