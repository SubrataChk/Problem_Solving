class Solution:
    def isAnagram(self, s: str, t: str):
        
        if len(s) != len(t):
            return False
        
        count: dict[str, int] = {}
        for a, b in zip(s, t):
            count[a] = count.get(a, 0) + 1
            count[b] = count.get(b, 0) -1
        return all(v == 0 for v in count.values())


data = Solution()

print(data.isAnagram("anagram", "nagaram"))