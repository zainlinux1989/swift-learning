// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct oop {
    static func main() {
        let musician = Musician(initName: "James", initAge: 10, initInstrument: "Guitar", initType: .LeadGuitar)

        print(musician.type.description)
        musician.sing()

        let superMusician = SuperMusician(initName: "Lars", initAge: 20, initInstrument: "Drums", initType: .Drummer, initBandName: "Metallica")
        superMusician.sing()

        var structMusician = MusicianStruct(name: "Kirk", instrument: "Guitar", age: 30)
        print(structMusician.name)
        print(structMusician.age)
        structMusician.increaseAge()
        print(structMusician.age)

        tupleExample()

        print(guardExample(num: 5)) // Output: Number is positive: 5
        print(guardExample(num: -3)) // Output: 100
    }
}
