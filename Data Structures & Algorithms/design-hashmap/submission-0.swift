
class MyHashMap {

    var map: [(key: Int, value: Int)] = []

    init() {

    }

    func put(_ key: Int, _ value: Int) {

        for i in 0..<map.count {
            if map[i].key == key {
                map[i].value = value
                return
            }
        }

        map.append((key, value))
    }

    func get(_ key: Int) -> Int {

        for item in map {
            if item.key == key {
                return item.value
            }
        }

        return -1
    }

    func remove(_ key: Int) {

        for i in 0..<map.count {
            if map[i].key == key {
                map.remove(at: i)
                return
            }
        }
    }
}
