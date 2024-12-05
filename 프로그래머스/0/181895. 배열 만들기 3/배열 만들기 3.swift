import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    var answer: [Int] = []
    for interval in intervals {
        let start = interval[0]
        let end = interval[1]
        answer += arr[start...end]
    }
    return answer
}