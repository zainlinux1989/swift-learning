struct MusicianStruct {
    var name: String
    var instrument: String
    var age: Int


    /// Increases the age of the musician by 1
    mutating func increaseAge() {
        age += 1
    }
}