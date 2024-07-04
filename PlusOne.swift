class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        let lastIndex = digits.endIndex-1
        var result = digits
        increment(result: &result, index: lastIndex)

        return result
    }

    func increment(result: inout [Int], index: Int) {
        if result[index].plusOne() {
            guard index > 0 else {
                result.insert(1, at: 0)
                return
            }
            increment(result: &result, index: index-1)
        }
    }
}

extension Int {
    mutating func plusOne() -> Bool {
        if self == 9 {
            self = 0
            return true
        }
        self += 1
        return false
    }
}
