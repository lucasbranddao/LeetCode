/// Problem: https://leetcode.com/problems/valid-sudoku/

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {

        //Calculates vertical and horizontal lines
        for (i,list) in board.enumerated() {
            var horizontal: [Character] = []
            var vertical: [Character] = []

            for (j,value) in list.enumerated() {
                let hItem = value
                if hItem != "." {
                    if horizontal.contains(hItem) { return false }
                    horizontal.append(hItem)
                }

                let vItem = board[j][i]
                if vItem != "." {
                    if vertical.contains(vItem) { return false }
                    vertical.append(vItem)
                }
            }
        }

        // Calculates 3x3 subBoxes
        var k = 0
        var l = 0
        while k <= 6 {
            l = 0
            while l <= 6 {
                var subBox: [Character] = []
                for i in k...k+2 {
                    for j in l...l+2 {
                        let item = board[i][j]
                        if item != "." {
                            if subBox.contains(item) { return false }
                            subBox.append(item)
                        }
                    }
                }
                l += 3
            }
            k += 3
        }

        return true
    }
}
