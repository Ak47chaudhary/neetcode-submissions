class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let first = Array(strs[0])
        for i in 0..<first.count{
           var firstChar = first[i]
           for j in 1..<strs.count{
              var current = Array(strs[j])
              if i >= current.count || current[i] != firstChar{
                 return String(first[0..<i])
              } 
           }
        }
        return String(first)
        
    }
}
