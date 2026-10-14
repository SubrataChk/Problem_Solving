class Solution{
    func containDuplicates(_ nums: [Int]) -> Bool{
        var seen: Set<Int> = []

        for num in nums {
            if seen.contains(num){
                return true
            }
            seen.insert(num)
        }

        return false
    }
}

var data = Solution()
print("Data: \(data.containDuplicates([1, 2, 3, 4, 3]))")
