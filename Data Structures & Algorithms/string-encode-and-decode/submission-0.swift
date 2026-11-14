class Solution {
    func encode(_ strs: [String]) -> String {
        var result = ""
        for value in strs{
            result.append("\(value.count)#\(value)")
        }
        return result
    }

    func decode(_ str: String) -> [String] {
        var i = 0
        var array = Array(str)
        var result = [String]()
        while i < array.count{
            var j = i
            while array[j] != "#"{
                j += 1
            }
            var length = Int(String(array[i..<j]))
            var start = j + 1
            var end = start + length!
            var word = String(array[start..<end])
            result.append(word)
            i = end
        }
        return result
    }
}