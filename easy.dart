//1. Two Sum

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }
    return [];
  }
}

//  13. Roman to Integer

class Solution {
  int romanToInt(String s) {
    int sum = 0;
    for (int i = 0; i < s.length; i++) {
      switch (s[i]) {
        case 'I':
          if (i < s.length - 1) {
            if (s[i + 1] == 'V') {
              sum = sum + 4;
              i = i + 1;
              break;
            }
            if (s[i + 1] == 'X') {
              sum = sum + 9;
              i = i + 1;
              break;
            }
          }
          sum = sum + 1;
          break;
        case 'V':
          sum = sum + 5;
          break;
        case 'X':
          if (i < s.length - 1) {
            if (s[i + 1] == 'L') {
              sum = sum + 40;
              i = i + 1;
              break;
            }
            if (s[i + 1] == 'C') {
              sum = sum + 90;
              i = i + 1;
              break;
            }
          }
          sum = sum + 10;
          break;
        case 'L':
          sum = sum + 50;
          break;
        case 'C':
          if (i < s.length - 1) {
            if (s[i + 1] == 'D') {
              sum = sum + 400;
              i = i + 1;
              break;
            }
            if (s[i + 1] == 'M') {
              sum = sum + 900;
              i = i + 1;
              break;
            }
          }
          sum = sum + 100;
          break;
        case 'D':
          sum = sum + 500;
          break;
        case 'M':
          sum = sum + 1000;
          break;
        default:
          return sum;
      }
    }
    return sum;
  }
}

//  13. Roman to Integer

class Solution {
  int romanToInt(String s) {
    int sum = 0;
    for (int i = 0; i < s.length; i++) {
      switch (s[i]) {
        case 'I':
          if (i < s.length - 1) {
            if (s[i + 1] == 'V') {
              sum = sum + 4;
              i = i + 1;
              break;
            }
            if (s[i + 1] == 'X') {
              sum = sum + 9;
              i = i + 1;
              break;
            }
          }
          sum = sum + 1;
          break;
        case 'V':
          sum = sum + 5;
          break;
        case 'X':
          if (i < s.length - 1) {
            if (s[i + 1] == 'L') {
              sum = sum + 40;
              i = i + 1;
              break;
            }
            if (s[i + 1] == 'C') {
              sum = sum + 90;
              i = i + 1;
              break;
            }
          }
          sum = sum + 10;
          break;
        case 'L':
          sum = sum + 50;
          break;
        case 'C':
          if (i < s.length - 1) {
            if (s[i + 1] == 'D') {
              sum = sum + 400;
              i = i + 1;
              break;
            }
            if (s[i + 1] == 'M') {
              sum = sum + 900;
              i = i + 1;
              break;
            }
          }
          sum = sum + 100;
          break;
        case 'D':
          sum = sum + 500;
          break;
        case 'M':
          sum = sum + 1000;
          break;
        default:
          return sum;
      }
    }
    return sum;
  }
}
