func tupleExample() {
	let tuple = (1, "Hello", 3.14)
	print((tuple.0)) // Output: 1
	print(tuple.1) // Output: Hello
	print(tuple.2) // Output: 3.14
}


func guardExample(num: Int) -> Int  {
    let number:Int?

    if num > 0 {
        number = num
    } else {
        number = nil
    }


    guard let a: Int = number else {
        return 100
    }

    print("Number is positive: \(a)")
    return a
}