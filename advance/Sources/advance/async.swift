enum APIError: Error {
    case badURL, noData, decodeFailed
    case serverError(Int)
}  // Completion-based API returns a Result — callers switch over it func fetchUser(id: Int, completion: @escaping (Result<UserProfile, APIError>) -> Void) { guard id > 0 else { completion(.failure(.badURL)); return } if id == 404 { completion(.failure(.serverError(404))); return } completion(.success(UserProfile(id: id, name: "Alice"))) } fetchUser(id: 1) { result in switch result { caseprint(" 👤 .success(let Got user): user: \(user.name)") case .failure(let error): switch case .serverError(let error { code): print(" 🔴 Server \(code)") default: print(" 🔴 \(error)") } } } // Handy Result helpers let nameResult: Result<String, APIError> = .success("Bob") let name = nameResult.map { $0.uppercased() } // .success("BOB") let safe = nameResult.getOrElse("Guest") // "Bob"

struct UserProfile {
    let id: Int
    let name: String
}

// Completion-based API returns a Result — callers switch over it
func fetchUser(id: Int, completion: @escaping (Result<UserProfile, APIError>) -> Void) {
    guard id > 0 else {
        completion(.failure(.badURL))
        return
    }
    if id == 404 {
        completion(.failure(.serverError(404)))
        return
    }
    completion(.success(UserProfile(id: id, name: "Alice")))
}

func loadUserProfile(id: Int) async throws -> UserProfile {
    guard id > 0 else { throw APIError.badURL }

    return UserProfile(id: id, name: "Alice")
}
