// https://leetcode.com/submissions/detail/966302869/

class Solution {
    func romanToInt(_ s: String) -> Int {
        var previous = 0
        var sum = 0
        s.forEach({ c in
            let v = RomanNumerals(rawValue: c)?.getInt() ?? 0
            if previous < v && previous != 0 {
                sum += (v-(2*previous))
            }
            else {
                sum += v
            }
            previous = v
        })
        return sum
    }
}

enum RomanNumerals: Character {
    case i = "I"
    case v = "V"
    case x = "X"
    case l = "L"
    case c = "C"
    case d = "D"
    case m = "M"

    func getInt() -> Int {
        switch self {
            case .i:
                return 1
            case .v:
                return 5
            case .x:
                return 10
            case .l:
                return 50
            case .c:
                return 100
            case .d:
                return 500
            case .m:
                return 1000
        }
    }
}
