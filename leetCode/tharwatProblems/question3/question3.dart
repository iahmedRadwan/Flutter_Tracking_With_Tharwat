// Given two strings s and t, return true if t is an
// anagram
//  of s, and false otherwise.

// Example 1:

// Input: s = "anagram", t = "nagaram"

// Output: true

// Example 2:

// Input: s = "rat", t = "car"

// Output: false

void main() {
  print(Solution().isAnagram("car", "rat"));
}

class Solution {
  bool isAnagram(String s, String t) {
    List<String> sortedStringS = s.split('');
    List<String> sortedStringT = t.split('');
    sortedStringS.sort();
    sortedStringT.sort();
    if (sortedStringT.length == sortedStringS.length) {
      for (var item in sortedStringS) {
        if (!sortedStringT.contains(item)) {
          return false;
        }
      }
    } else {
      return false;
    }

    return true;
  }
}
