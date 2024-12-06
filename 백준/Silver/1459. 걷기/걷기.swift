let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (x,y,w,s) = (input[0],input[1],input[2],input[3])
let xymin = min(x, y)
let xyMax = max(x, y)
var answer = Int.max
answer = min(answer, (x+y) * w)

if (x + y) % 2 == 0 {
    let time = xyMax * s
    answer = min(answer, time)
} else {
    let time = (xyMax - 1) * s + w
    answer = min(answer, time)
}

let time = (xymin * s) + (abs(x-y) * w)
answer = min(answer, time)
print(answer)
