protocol Drawable {
    var color: String {get}
    func draw()
    mutating func resize(by factor: Double)
}

struct Circle: Drawable {
    var color: String
    var radius: Double
    
    func draw() {
        print("Drawing a \(color) circle with radius \(radius)")
    }
    
    mutating func resize(by factor: Double) {
        radius *= factor
    }
}

struct Rectangle: Drawable {
    var color: String
    var width: Double
    var height: Double
    
    func draw() {
        print("Drawing a \(color) rectangle with width \(width) and height \(height)")
    }
    
    mutating func resize(by factor: Double) {
        width *= factor
        height *= factor
    }
}