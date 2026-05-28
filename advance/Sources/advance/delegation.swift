// Example-1
// 1. Define the contract
protocol FormDelegate: AnyObject {
    // AnyObject → only classes can conform
    func formDidSubmit(_ values: [String: String])
    func formDidFailValidation(field: String, message: String)
    func formDidCancel()
}
// 2. Delegating object — knows nothing about who handles events
class LoginForm {
    weak var delegate: FormDelegate?
    // weak — no retain cycle
    func submit(email: String, password: String) {
        guard email.contains("@") else {
            delegate?.formDidFailValidation(field: "email", message: "Invalid email")
            return
        }
        guard password.count >= 8 else {
            delegate?.formDidFailValidation(field: "password", message: "Min 8 chars")
            return
        }
        delegate?.formDidSubmit(["email": email, "password": password])
    }
    func cancel() { delegate?.formDidCancel() }
}
// 3. Delegate implementation
class LoginViewController: FormDelegate {
    let form = LoginForm()
    init() { form.delegate = self }
    // register self as delegate
}

extension LoginViewController {
    func formDidSubmit(_ values: [String: String]) {
        print("Login successful with: \(values)")
    }
    func formDidFailValidation(field: String, message: String) {
        print("Validation error in \(field): \(message)")
    }
    func formDidCancel() {
        print("Login cancelled")
    }
}

// Example-2
struct Product {
    let id: Int
    let name: String
    let price: Double

    init(id: Int, name: String, price: Double) {
        self.id = id
        self.name = name
        self.price = price
    }
}

protocol ProductCardDelegate: AnyObject {
    func cardDidTapAddToCart(_ product: Product)
    func cardDidTapWishlist(_ product: Product)
}

class ProductCard {
    weak var delegate: ProductCardDelegate?
    let product: Product

    init(product: Product) {
        self.product = product
    }

    func tapAddToCart() {
        delegate?.cardDidTapAddToCart(product)
    }

    func tapWishlist() {
        delegate?.cardDidTapWishlist(product)
    }
}

// Any screen that shows cards becomes the delegate
class ShopScreen: ProductCardDelegate {
    var cart: [Product] = []

    func cardDidTapAddToCart(_ p: Product) {
        cart.append(p)
        print("Added \(p.name) — cart: \(cart.count) items")
    }

    func cardDidTapWishlist(_ p: Product) {
        print("Added \(p.name) to wishlist")
    }
}
