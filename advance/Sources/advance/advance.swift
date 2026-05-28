// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct advance {
    static func main() async {
        // Protocols and extensions example
        let canvas: [Drawable] = [
            Circle(color: "red", radius: 5),
            Rectangle(color: "blue", width: 10, height: 20),
        ]

        canvas.forEach { shape in
            shape.draw()
        }

        canvas.forEach { shape in
            var mutableShape = shape
            mutableShape.resize(by: 2)
        }

        canvas.forEach { shape in
            shape.draw()
        }

        // Extensions example
        let name = "John Doe"
        print("Is email: \(name.isEmail)")
        print("Word count: \(name.wordCount)")
        print("Words: \(name.words)")
        print("Reversed: \(name.reversing())")
        print("Truncated: \(name.truncated(limit: 4))")

        let auth: AuthService = AuthService()
        auth.login(user: "alice")
        auth.log("zain")
        let payment: PaymentService = PaymentService()
        payment.log("Charged $9.99")

        // Delegation example
        let vc = LoginViewController()
        vc.form.submit(email: "bad-email", password: "abc")
        vc.form.submit(email: "alice@x.com", password: "abc")
        vc.form.submit(email: "alice@x.com", password: "secret99")

        let shopScreen = ShopScreen()
        let product = Product(id: 1, name: "Sneakers", price: 79.99)
        let card = ProductCard(product: product)
        card.delegate = shopScreen
        card.tapAddToCart()
        card.tapWishlist()

        // Async example
        fetchUser(id: 1) { result in
            switch result {
            case .success(let user):
                print(" 👤 Got user: \(user.name)")
            case .failure(let error):
                switch error {
                case .serverError(let code):
                    print(" 🔴 Server \(code)")
                default:
                    print(" 🔴 \(error)")
                }
            }
        }
        // Handy Result helpers
        let nameResult: Result<String, APIError> = .success("Bob")
        let names = nameResult.map { $0.uppercased() }
        // .success("BOB")
        do {
            let safe = try nameResult.get()
            print("Safe name: \(safe)")
        } catch {
            print("Error getting name: \(error)")
        }

        do {
            let user = try await loadUserProfile(id: 1)
            print("Loaded user: \(user.name)")
        } catch {
            print("Failed to load user: \(error)")
        }

        // fetch user with async/await
        await loadSequential()
        Task {
            await loadParallel()
        }
    }
}
