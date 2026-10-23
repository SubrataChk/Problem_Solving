class Solution {
  bool isAnagram(String s, String t) {

    if(s.length != t.length) return false;

    final Map<int, int> count = <int, int>{};
    for (int i = 0; i < s.length; i++) {
      final int a = s.codeUnitAt(i);
      final int b = t.codeUnitAt(i);
      count[a] = (count[a] ?? 0) + 1;
      count[b] = (count[b] ?? 0) - 1;

    }


    return count.values.every((int v) => v == 0);

  }
}


void main() {
  final data = Solution();


  print(data.isAnagram("anagram", "nagaram"));
}