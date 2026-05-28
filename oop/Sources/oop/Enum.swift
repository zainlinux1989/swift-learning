enum MusicianType {
    case LeadGuitar
    case Vocalist
    case Drummer
    case Bassist
    case Violinist

    var description: String {
        switch self {
        case .LeadGuitar:
            return "Lead Guitar"
        case .Vocalist:
            return "Vocalist"
        case .Drummer:
            return "Drummer"
        case .Bassist:
            return "Bassist"
        case .Violinist:
            return "Violinist"
        }
    }
}