/// Problem: https://leetcode.com/problems/rotate-array/

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let endIndex = nums.endIndex
        let mod = k%(endIndex)
        guard
            k > 0,
            endIndex-1 > 0,
            mod != endIndex
        else { return }
        let final = mod == 0 ? k : mod
        for _ in 1...final {
            let lastIndex = nums.endIndex-1
            let rotated = nums.remove(at: lastIndex)
            nums.insert(rotated, at: 0)
        }
    }
}
