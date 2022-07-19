import UIKit

let wallet = [100, 20, 50, 20, 10, 5, 5, 5, 2, 2, 1, 50]

func calculateMoney (wallet: [Int], type: Int?) -> (summury: Int, count: Int) {
    var sum = 0
    var count = 0
    
    for i in wallet {
       
        if (type == nil)) || type != nil && i == type! {
            sum += i
            count += 1
        }
    }
    
    return (sum, count)
}

let money = calculateMoney(wallet: wallet, type: 50)
money.count
