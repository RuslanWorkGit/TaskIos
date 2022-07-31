import UIKit

// Task 1 - https://github.com/RuslanWorkGit/TaskIos/blob/master/Block3/Protocols/Practice/PracticeProtocol.playground/Contents.swift

// Task 2 - https://github.com/RuslanWorkGit/TaskIos/blob/master/Block3/Protocols/MyOwnTask/MyTask.playground/Contents.swift

// У проекті xCode - додав щоб при натисканні кнопки змінювавсуя background color і коли натискаєш на 1 кнопку то воно чомусь змінює колір на другій кнопці.
// https://github.com/RuslanWorkGit/TaskIos/blob/0d3947c58dfea94058762f244b42c4da49a2e183/Block3/Protocols/xCodeProj/ProtocolOpt/ProtocolOpt/ViewController.swift

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

// Task 4 - додав щоб при натисканні кнопки змінювавсуя background color і коли натискаєш на 1 кнопку то воно чомусь змінює колір на другій кнопці.
// https://github.com/RuslanWorkGit/TaskIos/blob/master/Block3/Protocols/xCodeProj/ProtocolOpt/ProtocolOpt/ViewController.swift

// Task 5 - https://github.com/RuslanWorkGit/TaskIos/blob/0d3947c58dfea94058762f244b42c4da49a2e183/Block3/Generic/Generic.playground/Contents.swift

//Task 6 - взяв з уроку SwiftBook, зрозумів як це працює можливо потім зроблю якось сам але то мабуть будуть вже типу через костилі так сказати. І коли я вирішив створити посилання на минулий щоб зберігалося посилання і на анступний і на минулий то воно писало що буде цикл і помилка, не зовсім зрозумів як це виправити.
// https://github.com/RuslanWorkGit/TaskIos/blob/master/Block3/Homework3/LinkedList/Linked_list.playground/Contents.swift
