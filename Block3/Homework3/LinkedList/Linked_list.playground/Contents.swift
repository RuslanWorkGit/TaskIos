import UIKit

struct LinkedList<T> {
    var head: LinkedListNode<T>
    init(head: LinkedListNode<T>){
        self.head = head
    }
    
}

indirect enum LinkedListNode<T> { //indirect enum - це enum які використувються свій тип LinkedListNode в середині себе
    case value(element: T, next: LinkedListNode<T>)
    //case valuePlus(element: T, previus: LinkedListNode<T>, next: LinkedListNode<T>)
    //case first
    case end
}





let element4 = LinkedListNode.value(element: "D", next: .end)
let element3 = LinkedListNode.value(element: "C", next: element4)
let element2 = LinkedListNode.value(element: "B", next: element3)
let element1 = LinkedListNode.value(element: "A", next: element2)

let list = LinkedList(head: element1)

//let elementPlus1 = LinkedListNode.valuePlus(element: "A", previus: .first, next: elementPlus2)
//let elementPlus2 = LinkedListNode.valuePlus(element: "B", previus: elementPlus1, next: elementPlus3)
//let elementPlus3 = LinkedListNode.valuePlus(element: "C", previus: elementPlus2, next: elementPlus4)
//let elementPlus4 = LinkedListNode.valuePlus(element: "D", previus: elementPlus3, next: .end)

extension LinkedList: Sequence {
    func makeIterator() -> LinkedListIterator<T>{
        return LinkedListIterator(current: head)
    }
}

struct LinkedListIterator<T>: IteratorProtocol {
    var current: LinkedListNode<T>
    
    mutating func next() -> T? {
        switch current {
        case let .value(element, next):
            current = next
            return element
        case .end: return nil
        }
    }
}

list.contains("D")

for el in list{
    print(el)
}
