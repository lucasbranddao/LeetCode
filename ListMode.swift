class Solution {
    func findElementWithHighestFrequency(_ nums: [Int]) -> Int {
        var frequencies: [Int:Int] = [:]
        var maxFrequency = 0
        var highestFrequencyElement = -1

        for n in nums {
            let currentFrequency = frequencies[n]
            let newFrequency = (currentFrequency ?? 0) + 1
            frequencies[n] = newFrequency
            if newFrequency > maxFrequency {
                maxFrequency = newFrequency
                highestFrequencyElement = n
            }
        }

        return highestFrequencyElement
    }
}


