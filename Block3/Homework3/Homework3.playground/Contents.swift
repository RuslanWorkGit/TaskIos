import UIKit

// Task 1 - https://github.com/RuslanWorkGit/TaskIos/blob/master/Block3/Protocols/Practice/PracticeProtocol.playground/Contents.swift

// Task 2 - https://github.com/RuslanWorkGit/TaskIos/blob/master/Block3/Protocols/MyOwnTask/MyTask.playground/Contents.swift

// Task 3

extension Int {
    
    func powN(pow: Int) -> Int{
        var result: Int = self
        for _ in 1..<pow {
            result *= self
        }
        
        return result
    }
}

let myNumb = 10
myNumb.powN(pow: 4)
let myNumb1 = 3
myNumb1.powN(pow: 3)
let myNumb2 = 5
myNumb2.powN(pow: 4)

extension String{
    func isPolindrome() -> Bool {
        if self == String(self.reversed()) {
            return true
        } else {
            return false
        }
    }
}

let text = "pops"
print(String(text.reversed()))
text.isPolindrome()

let text1 = "tenet"
text1.isPolindrome()

let text2 = "saippuakivikauppias"
text2.isPolindrome()

let text3 = "арозаупаланалапуазора"
text3.isPolindrome()

// Task 4

