import UIKit

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


