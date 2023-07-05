/// Problem: https://leetcode.com/problems/find-the-highest-altitude/

class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var currentAltitude = 0
        var maxAltitude = 0
        for netGain in gain {
            currentAltitude += netGain
            if currentAltitude > maxAltitude {
                maxAltitude = currentAltitude
            }
        }
        return maxAltitude
    }
}
