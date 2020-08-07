import UIKit
import Foundation

struct Stack {
    fileprivate var array : [String] = []
    
    
    mutating func push(_ element: String) {
        array.append(element)

    }
    
    mutating func pop() -> String? {
        return array.popLast()
    }
    
    mutating func peek() -> String? {
        return array.last
    }
    
    var isEmpty: Bool {
      return array.isEmpty
    }

    var count: Int {
      return array.count
    }
    //스택과 같이 쓰이는 property들..
    
}


var rwBookStack = Stack()

rwBookStack.push("iOS")
rwBookStack.peek() // iOS
rwBookStack.pop()  // iOS
rwBookStack.pop() // nil


extension Stack : CustomStringConvertible {
    //CustomStringConvertible Protocol ->
    //필수 속성 description
    //debug영역에서 return 되는 형식으로 출력 됨.
    var description: String {
      // 3
      let topDivider = "---Stack---\n"
      let bottomDivider = "\n-----------\n"

      // 4
      let stackElements = array.reversed().joined(separator: "\n") // \n newline
      // 5
      return topDivider + stackElements + bottomDivider
    }
    
    
    
}



rwBookStack.push("3D Games by Tutorials")
rwBookStack.push("tvOS Apprentice")
rwBookStack.push("iOS Apprentice")
rwBookStack.push("Swift Apprentice")
print(rwBookStack)


//위는 stack에 string만 포함되어 있을 경우에, int등이 포함 되어있다면, generic -> element

//struct Stack<Element> {
//  fileprivate var array: [Element] = []
//
//  mutating func push(_ element: Element) {
//    array.append(element)
//  }
//
//  mutating func pop() -> Element? {
//    return array.popLast()
//  }
//
//  func peek() -> Element? {
//    return array.last
//  }
//}



//extension Stack : CustomStringConvertible {
//    //CustomStringConvertible Protocol ->
//    //필수 속성 description
//    //debug영역에서 return 되는 형식으로 출력 됨.
//    var description: String {
//      // 3
//      let topDivider = "---Stack---\n"
//      let bottomDivider = "\n-----------\n"
//
//      // 4
//      let stackElements = array.map { "\($0)" }.reversed().joined(separator: "\n")
//      // 5
//      return topDivider + stackElements + bottomDivider
//    }
//
//
//
//}


