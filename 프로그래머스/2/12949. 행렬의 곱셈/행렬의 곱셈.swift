import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var resullt: [[Int]] = []
    for i in 0..<arr1.count {
        var temp: [Int] = []
        for j in 0..<arr2.first!.count {
            var sum = 0
            for k in 0..<arr2.count {
                sum += arr1[i][k] * arr2[k][j]
            }
            temp.append(sum)
        }
        resullt.append(temp)
    }
    return resullt
}