class SuperMusician: Musician{
    var bandName: String

    override init(){
        bandName = ""
        super.init()
    }

    init(initName: String, initAge: Int, initInstrument: String, initType: MusicianType, initBandName: String){
        bandName = initBandName
        super.init(initName: initName, initAge: initAge, initInstrument: initInstrument, initType: initType)
    }

    override func sing(){
        print("La la la in the band \(bandName)")
    }
}