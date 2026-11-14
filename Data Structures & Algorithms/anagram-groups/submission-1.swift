class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {

    var dic = [String: [String]]()

    for value in strs {

        // Sort characters and convert back to String
        let sortValue = String(value.sorted())

        // Append word to its anagram group
        dic[sortValue, default: []].append(value)
    }

    // Return grouped anagrams
    return Array(dic.values)
} 
}
