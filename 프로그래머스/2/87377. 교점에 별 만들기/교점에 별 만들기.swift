import Foundation
func crossPoint(aLine: [Int], bLine : [Int]) -> (Int?,Int?) {
    let A = aLine[0]
    let B = aLine[1]
    let C = bLine[0]
    let D = bLine[1]
    let E = aLine[2]
    let F = bLine[2]
    let adbc = (A * D - B * C)
    let bfed = (B * F - E * D)
    let ecaf = (E * C - A * F)
    var x: Int?
    var y: Int?
    if adbc != 0 && bfed % adbc == 0 && ecaf % adbc == 0 {
        x = (B * F - E * D) / (A * D - B * C)
        y = (E * C - A * F) / (A * D - B * C)
    }
    
    
    return (x,y)
}
func solution(_ line:[[Int]]) -> [String] {
    var croosPointList: [(Int,Int)] = []
    var maxX = Int.min
    var minX = Int.max
    var maxY = Int.min
    var minY = Int.max
    for i in 0..<line.count {
        for j in i+1..<line.count {
            let aLine = line[i]
            let bLine = line[j]
            let point = crossPoint(aLine: aLine, bLine: bLine)
            
            if let x = point.0, let y = point.1 {
                maxX = max(maxX, x)
                maxY = max(maxY, y)
                minX = min(minX, x)
                minY = min(minY, y)
                croosPointList.append((x,y))
            }
        }
    }
    var arr = Array(repeating: Array(repeating: ".", count: maxX - minX + 1), count: maxY - minY + 1)
    
    for croosPoint in croosPointList {
        arr[croosPoint.1 - minY][croosPoint.0 - minX] = "*"
    
    }
    var result: [String] = []
    for arr in arr.reversed() {
        result.append(arr.reduce("", +))
    }
    return result
}