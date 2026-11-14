
class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {

        var dic = [Int: Int]()

        // Step 1: Count frequency
        for value in nums {
            dic[value, default: 0] += 1
        }

        // Step 2: Sort by frequency (descending)
        let sortedDic = dic.sorted { first, second in
            first.value > second.value
        }

        // Step 3: Extract keys
        let array = sortedDic.map { $0.key }

        // Step 4: Return top K elements
        return Array(array.prefix(k))
    }
}
