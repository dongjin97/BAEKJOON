import Foundation

func solution(_ s:String) -> Int {
    var basket = s
    var changeBasket = s
    let count = basket.count
    var result = 0
    for _ in 0..<count{
        while basket.contains("[]") || basket.contains("()") || basket.contains("{}") {
            basket = basket.replacingOccurrences(of: "[]", with: "")
            basket = basket.replacingOccurrences(of: "()", with: "")
            basket = basket.replacingOccurrences(of: "{}", with: "")
        }
        
        if basket.isEmpty {
            result += 1
        }
        changeBasket.append(changeBasket.removeFirst())
        basket = changeBasket
    }
    
    return result
}