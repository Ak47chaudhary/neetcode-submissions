
class MyHashSet {

    var hashSet: [Bool]

    init() {
        hashSet = Array(repeating: false, count: 1000001)
    }

    func add(_ key: Int) {
        hashSet[key] = true
    }

    func remove(_ key: Int) {
        hashSet[key] = false
    }

    func contains(_ key: Int) -> Bool {
        return hashSet[key]
    }
}
