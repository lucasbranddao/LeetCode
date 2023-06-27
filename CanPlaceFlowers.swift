/// Problem: https://leetcode.com/problems/can-place-flowers/

class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var i = 0
        var planted = 0
        var isPreviousEmpty = true
        let endIndex = flowerbed.endIndex
        while i < endIndex {
            if planted == n { return true }
            if i == 0 {
                if flowerbed[i] == 1 {
                    i += 1
                    isPreviousEmpty = false
                    continue
                }
                else {
                    if endIndex == 1 {
                        return true
                    }
                    if flowerbed[i+1] == 0 {
                        isPreviousEmpty = true
                        planted += 1
                        i += 2
                        continue
                    }
                }
            }

            else {
                if isPreviousEmpty {
                    if flowerbed[i] == 0 {
                        if i == endIndex - 1 {
                            planted += 1
                            break
                        }
                        else if flowerbed[i+1] == 0 {
                            planted += 1
                            i += 2
                            isPreviousEmpty = true
                            continue
                        }
                        else {
                            i += 1
                            isPreviousEmpty = false
                            continue
                        }
                    }
                    else {
                        i += 1
                        isPreviousEmpty = false
                        continue
                    }
                }
                else {
                    if i >= endIndex {
                        break
                    }
                    isPreviousEmpty = flowerbed[i] == 0
                    i += 1
                    continue
                }
            }
            i += 1
        }

        return planted >= n

    }
}
