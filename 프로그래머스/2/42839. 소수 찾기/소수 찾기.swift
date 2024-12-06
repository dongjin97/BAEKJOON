import Foundation

func solution(_ numbers:String) -> Int {
        let numbers = Array(numbers).map{String($0)}
    var numList = Set<Int>()
    var count = 0
    var visited = Array(repeating: false, count: numbers.count)
    func isprime(num: Int) ->Bool {
        if num < 4 {
            return num <= 1 ? false : true
        } else {
            for i in 2..<num {
                if num % i == 0 {
                    return false
                }
            }
        }
        
        return true
    }

    func permute(arr: [String], count: Int,rCount: Int) {
        if count == rCount {
            numList.insert(Int(arr.joined())!)
        }
        for (idx,num) in numbers.enumerated() {
            if visited[idx] {
                continue
            }
            var newArr = arr
            newArr.append(num)
            visited[idx] = true
            permute(arr: newArr, count: count+1, rCount: rCount)
            visited[idx] = false
        }
    }
    
    for i in 1...numbers.count {
        permute(arr: [], count: 0, rCount: i)
    }
    for i in numList {
        if isprime(num: i) {
            count+=1
        }
    }
    
    return count
}