import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var answer : [Int] = []
    for query in queries{
        let (s,e,k) = (query[0],query[1],query[2])
        var answerArr : [Int] = []
        for i in s...e{
            if arr[i] > k{
                answerArr.append(arr[i])
            }
        }
        answer.append(answerArr.min() ?? -1)
        
    }
    return answer
}