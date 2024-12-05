func solution(_ s:String) -> Bool {
   if s.count != 4 && s.count != 6 {
        return false
    } else {
        for ch in s {
            if !ch.isNumber {
                return false
            }
        }
    }
    return true
}