class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result: [Int] = []
        var n2 = nums2
        for n1 in nums1 {
            if let index = n2.firstIndex(where: {
                $0 == n1
            }) {
                result.append(n1)
                n2.remove(at: index)
            }
        }
        return result
    }
}
