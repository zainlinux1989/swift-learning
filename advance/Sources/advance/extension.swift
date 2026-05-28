extension String {
    var isEmail: Bool { contains("@") && contains(".") }
    var wordCount: Int { self.split(separator: " ").count }
    var words: [String] { self.split(separator: " ").map { String($0) } }

    func reversing() -> String {
        return String(self.reversed())
    }

    func truncated(limit: Int) -> String {
        if self.count > limit {
            return self.prefix(limit) + "..."
        } else {
            return self
        }
    }
}

extension Int {
    func clamped(_ lo: Int, _ hi: Int) -> Int {
        return Swift.max(lo, Swift.min(self, hi))
    }
    var isEven: Bool { self % 2 == 0 }
    var factorial: Int { self <= 1 ? 1 : self * (self - 1).factorial }
}
