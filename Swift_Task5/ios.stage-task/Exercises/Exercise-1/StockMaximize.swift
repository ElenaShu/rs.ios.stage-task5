import Foundation

class StockMaximize {

    func countProfit(prices: [Int]) -> Int {
        var spent = 0
        var spentCount = 0
        var result = 0
        if prices.count < 2 {
            return 0
        } else {
            for i in 0..<(prices.count-1) {
                if prices[i+1] < prices[i] {
                    if spent > 0 {
                        result += ((prices[i] * spentCount) - spent)
                        spentCount = 0
                        spent = 0
                    }
                } else {
                    spent += prices[i]
                    spentCount += 1
                }
            }
            result += ((prices.last! * spentCount) - spent)
            return result > 0 ? result : 0
        }
    }
}
