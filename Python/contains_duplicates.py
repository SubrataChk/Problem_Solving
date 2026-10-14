from typing import List

def contains_duplicates(nums : List[int]):
    seen: set[int] = set()
    for num in nums:
        if num in seen:
            return True
        seen.add(num)
    return False

print(contains_duplicates(nums = [1, 2, 3,] ))
