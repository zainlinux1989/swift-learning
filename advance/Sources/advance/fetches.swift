func fakeAPI(_ name: String, delay: UInt64 = 1_000_000_000) async -> String {
    try? await Task.sleep(nanoseconds: delay)
    return "Data for \(name)"
}
//❌ SEQUENTIAL — total time ≈ 3 seconds (each waits for previous)
func loadSequential() async {
    let user = await fakeAPI("user")
    // waits 1s
    let friends = await fakeAPI("friends")
    // waits 1s more
    let posts = await fakeAPI("posts")
    // waits 1s more
    print(user, friends, posts)
}
// ✅ PARALLEL with async let — total time ≈ 1 second (all run simultaneously)
func loadParallel() async {
    async let user = fakeAPI("user")
    // launched immediately
    async let friends = fakeAPI("friends")  // launched immediately
    async let posts = fakeAPI("posts")
    // launched immediately
    let (u, f, p) = await (user, friends, posts)
    // await all at once
    print(u, f, p)
}
