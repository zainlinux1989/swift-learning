func variables() {
    let name: String = "Swift"
        let version: Double = 5.7
        print("Hello, world!")
        print("Welcome to \(name) version \(version)")

        let newName: String = "Swift Programming Language"
        print("New name: \(newName)")

        let cap = newName.uppercased()
        print("Capitalized name: \(cap)")

        let pi: Double = 3.14159
        print("Value of pi: \(pi)")

        let isSwiftFun: Bool = true
        print("Is Swift fun? \(isSwiftFun)")
        
        var toggle: Bool = false
        print("Toggle is \(toggle)")
        toggle = true
        print("Toggle is now \(toggle)")
}

func optionalVariables() {
    var optionalName: String? = "Optional Swift"
    print("Optional name: \(optionalName!)")

    if let val = optionalName{
        print("Unwrapped optional name: \(val)")
    }

    optionalName = nil
    print("Optional name after setting to nil: \(optionalName)")

    var optionalNumber: Int?
    if let number = optionalNumber {
        print("Optional number: \(number)")
    } else {
        print("Optional number is nil")
    }

    optionalNumber = 42
    if let number = optionalNumber {
        print("Optional number after setting value: \(number)")
    }
}