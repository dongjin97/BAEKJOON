func solution(_ n:Int64) -> [Int] {
      return String(n).compactMap{$0.hexDigitValue}.reversed()
}