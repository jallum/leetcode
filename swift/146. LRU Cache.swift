
class LRUCache {
    class Entry {
        let key: Int
        var value: Int
        var next: Entry?
        var prev: Entry?
        
        init(key: Int, value: Int, next: Entry?) {
            self.key = key
            self.value = value
            self.next = next
            self.prev = nil
        }
    }

    var capacity: Int
    var entries: [Int:Entry] = [:]
    var lru: Entry? = nil
    var mru: Entry? = nil
    
    init(_ capacity: Int) {
        self.capacity = capacity
    }

    private func moveToFront(entry: Entry) {
        guard mru !== entry else {
            return
        }

        if lru === entry {
            lru = entry.prev
            lru?.next = nil
        } else {
            entry.prev?.next = entry.next
            entry.next?.prev = entry.prev
        }
        entry.prev = nil
        entry.next = mru
        mru?.prev = entry
        mru = entry
    }

    private func removeOldestEntry() {
        guard let oldLru = lru else {
            return
        }
        entries[oldLru.key] = nil
        if let p = oldLru.prev {
            p.next = nil
            lru = p
        } else {
            lru = nil
        }
    }
    
    func get(_ key: Int) -> Int {
        guard let entry = entries[key] else {
            return -1
        }
        moveToFront(entry: entry)
        return entry.value
    }
    
    func put(_ key: Int, _ value: Int) {
        guard let entry = entries[key] else {
            if entries.count == capacity {
                removeOldestEntry()
            }

            let entry = Entry(key:key, value: value, next: mru)
            entries[key] = entry

            mru?.prev = entry
            mru = entry
            if lru == nil {
                lru = entry
            }
            
            return
        }

        moveToFront(entry: entry)
        entry.value = value
    }
}

/**
 * Your LRUCache object will be instantiated and called as such:
 * let obj = LRUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */
