protocol Loggable {
    func log(_ message: String)
    func logError(_ error: String)
}

extension Loggable {
    func log(_ message: String) {
        print("Default Log: \(message)")
    }

    func logError(_ error: String) {
        print("Default Error: \(error)")
    }
}

struct AuthService: Loggable {
    let logPrefix = "AUTH"
    // log() and logError() provided automatically
    func login(user: String) {
        log("User \(user) logged in")
    }
}
struct PaymentService: Loggable {
    let logPrefix = "PAY"
    // Override default — custom format for payments
    func log(_ message: String) {
        print("💳 \(logPrefix) | \(message)")
    }
}
