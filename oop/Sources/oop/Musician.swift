class Musician{
    var name: String
    var age: Int
    var instrument: String
    var type: MusicianType

    init(){
        name = ""
        age = 0
        instrument = ""
        type = .LeadGuitar
    }

    init(initName: String, initAge: Int, initInstrument: String, initType: MusicianType){
        name = initName
        age = initAge
        instrument = initInstrument
        type = initType
    }

    func sing(){
        print("La la la")
    }
}