void main() {
  print(Solution().lastStoneWeight([2,7,4,1,8,1]));
}

// Input: stones = [2,7,4,1,8,1]
// Output: 1
// Explanation:
// We combine 7 and 8 to get 1 so the array converts to [2,4,1,1,1] then,
// we combine 2 and 4 to get 2 so the array converts to [2,1,1,1] then,
// we combine 2 and 1 to get 1 so the array converts to [1,1,1] then,
// we combine 1 and 1 to get 0 so the array converts to [1] then that's the value of the last stone.

class Solution {
  int lastStoneWeight(List<int> stones) {
    List<int> orderedStones;
    orderedStones = [...stones];
    int left, right;
    if (stones.length < 2) {
      return stones[0];
    }
    do {
      orderedStones.sort();
      left = orderedStones[orderedStones.length - 1];
      right = orderedStones[orderedStones.length - 2];
      if (left == right) {
        orderedStones.remove(right);
        orderedStones.remove(left);
        if (orderedStones.isEmpty) {
          return 0;
        }
      } else if (left != right) {
        orderedStones.remove(right);
        orderedStones.remove(left);
        orderedStones.add((left - right).abs());
      }
    } while (orderedStones.length > 1);
    return orderedStones[0];
  }
}
