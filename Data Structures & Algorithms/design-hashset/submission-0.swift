class MyHashSet {

    var set: [Int: Int] = [:]

    init() {

    }

    func add(_ key: Int) {
        set[key] = key

    }

    func remove(_ key: Int) {
        set[key] = nil
    }

    func contains(_ key: Int) -> Bool {
        return set[key] != nil
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
