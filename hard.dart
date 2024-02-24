// 4. Median of Two Sorted Arrays

class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    final nums = <int>[...nums1, ...nums2]..sort();
    final middle = nums.length ~/ 2; //Rounded integer middle

    if (middle == nums.length / 2) {
      //Is rounded middle == real middle
      int x = middle;
      int y = middle - 1;
      return (nums[x] + nums[y]) / 2;
    } else {
      int x = middle;
      return nums[x].toDouble();
    }
  }
}

// 10. Regular Expression Matching

mixin Solution1 {
  bool isMatch(String s, String p) {
    if (p.isEmpty) {
      return s.isEmpty;
    }
    bool firstMatch = s.isNotEmpty && (p[0] == s[0] || p[0] == '.');

    if (p.length >= 2 && p[1] == '*') {
      return (isMatch(s, p.substring(2)) ||
          (firstMatch && isMatch(s.substring(1), p)));
    } else {
      return firstMatch && isMatch(s.substring(1), p.substring(1));
    }
  }
}
