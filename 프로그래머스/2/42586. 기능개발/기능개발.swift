import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    let remainProgress = progresses.map{100 - $0}
    var duringDay: [Int] = []
    var result: [Int] = []
    
    for i in 0..<remainProgress.count {
        let day = ceil(Double(remainProgress[i]) / Double(speeds[i]))
        duringDay.append(Int(day))
    }
    
    while !duringDay.isEmpty {
        let day = duringDay.first!
        var count = 0
        while !duringDay.isEmpty && duringDay.first! <= day {
            duringDay.removeFirst()
            count+=1
        }
        result.append(count)
    }
    
    
    return result
}