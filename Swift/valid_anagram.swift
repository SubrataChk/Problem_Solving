class Solution {
    func isAnagram(_, s: String, _ t: String) {
        guard s.count == t.count {return false}

        var count : [Character: Int] = [:]

        for (a, b) in zip(s, t) {
            count[a, default: 0] += 1
            count[b, default: 0] -= 1

        }

        return count.value.allSatisfy{ $0 == 0 }

    }
}

var data = Solution()

print(data.isAnagram("anagram", "nagaram"))
