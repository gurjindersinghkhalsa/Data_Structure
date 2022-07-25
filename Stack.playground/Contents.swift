import UIKit
import Foundation

struct Stack {
    var arrItem:[Int] = []
    mutating func pushItem(item: Int)  {
        self.arrItem.append(item)
        print("After pushed \(String(describing: self.arrItem))")
    }
    
    mutating func popItem() -> Int?  {
        if arrItem.isEmpty {
            print("No Item")
            return nil
        } else {
            let item = arrItem.removeLast()
            print("Poped Item \(item)")
            return item
        }
    }
}

extension Stack{
    var topItem: Int? {
        return arrItem.isEmpty ? nil : arrItem.last
    }
}

var stack = Stack()
stack.pushItem(item: 1)
stack.pushItem(item: 2)
stack.pushItem(item: 3)
if let topI = stack.topItem {
    print(topI)
}
stack.popItem()
stack.popItem()
if let topI = stack.topItem {
    print(topI)
}
stack.popItem()



struct StackG<T> {
    var arrItem:[T] = []
    mutating func pushItem(item: T)  {
        self.arrItem.append(item)
        print("After pushed \(String(describing: self.arrItem))")
    }
    
    mutating func popItem() -> T?  {
        if arrItem.isEmpty {
            print("No Item")
            return nil
        } else {
            let item = arrItem.removeLast()
            print("Poped Item \(item)")
            return item
        }
    }
}

var integerStack = StackG<Int>()
integerStack.pushItem(item: 1)
integerStack.pushItem(item: 2)
integerStack.pushItem(item: 3)

integerStack.popItem()
integerStack.popItem()
integerStack.popItem()
integerStack.popItem()

var stringStack = StackG<String>()
stringStack.pushItem(item: "1")
stringStack.pushItem(item: "2")
stringStack.pushItem(item: "3")

stringStack.popItem()
stringStack.popItem()
stringStack.popItem()

protocol Queue {
    associatedtype Element
    mutating func enqueue(element: Element)-> Bool // Insert element at the back of the queue. Return true if the operation was successfule
    mutating func dequeue()-> Element? // Remove the element at the front of the queue and return it
    var isEmpty: Bool { get } // Check if the queue is empty
    var peek: Element? { get } // Return element at the front of the queue without removing
}

public struct QueueArray<T>: Queue {
   
    private var array: [T] = []
    public init() {}
    
    public var isEmpty: Bool {
        self.array.isEmpty
    }
    public var peek: T? {
        self.array.first
    }
    mutating public func enqueue(element: T)-> Bool {
        self.array.append(element)
        return true
    }
    mutating public func dequeue()-> T? {
        isEmpty ? nil :  self.array.removeFirst()
    }
}

extension QueueArray: CustomStringConvertible {
    public var description: String {
        String(describing: "Elements are \(array)")
    }
}
print("---------Queue Operations------------")
var queue = QueueArray<String>()
queue.enqueue(element: "Gurjinder Singh")
queue.enqueue(element: "Amit Singh")
queue.enqueue(element: "Harwinder Singh")
queue
queue.dequeue()
queue
queue.peek
// The Big O notation for constant time is O(1).
//The Big O notation for linear time is O(n).

// Most of the operations are constant time except for dequeue(), which take linear time.
// enqueue - Average case - O(1) Worst case -O(n)
// dequeue - Average case - O(n) Worst case -O(n)
// Space complexity - Average case - O(n) Worst case -O(n)

class Node<T: Equatable> { // ==
    var value: T?
    var next: Node?
    
}

class LinkedList<T: Equatable> {
    var node: Node<T>?
    
    func insertNode(value: T) {
        
    }
    
    func removeode(value: T) {
        
    }
}
