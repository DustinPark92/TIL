import UIKit


//node class의 역활 -> 이전 노드와 다음 노드를 연결.
public class Node {
    
    var value: String
     
    init(value: String) {
      self.value = value
    }

    //Next
    var next : Node?
    //연결 목록의 마지막 노드가 다른 노드를 가르키고 있지 않기 때문에 -> optional
    //Previous
    weak var previous: Node?
    //ownership cycle
    //weak으로 선언하지 않게 되면 a<->b로 이동할 수 있기 때문에
    //나중에 노드를 제거해도 계속 남아 있을 수 있따.
    
    

}


public class LinkedList {
  fileprivate var head: Node?
  private var tail: Node?

  public var isEmpty: Bool {
    return head == nil
  }

  public var first: Node? {
    return head
  }

  public var last: Node? {
    return tail
  }
    
    public func append(value: String) {
      // 1
      let newNode = Node(value: value)
      // 2
      if let tailNode = tail {
        newNode.previous = tailNode
        tailNode.next = newNode
      } //-> tail node가 nil이 아니라면, 연결된 무언가 가 있음
        //목록의 ㄱ끝을 가리키도록 새 항목을 구성함.
        
    
      // 3
      else {
        head = newNode
      }
      // 4
      tail = newNode
    }
    
    //Node Access
    public func nodeAt(index: Int) -> Node? {
      // 1
      if index >= 0 {
        var node = head
        var i = index
        // 2
        while node != nil {
          if i == 0 { return node }
          i -= 1
          node = node!.next
        }
      }
      // 3
      return nil
    }
    
    //All Node Remove
    public  func  removeAll () {
      head = nil
      tail = nil
    }


}


let dogBreeds = LinkedList ()
dogBreeds.append(value : "Labrador" )
dogBreeds.append(value : "Bulldog" )
dogBreeds.append(value : "Beagle" )
dogBreeds.append(value : "허스키" )

print(dogBreeds)


// 1
extension LinkedList: CustomStringConvertible {
  // 2
  public var description: String {
    // 3
    var text = "["
    var node = head
    // 4
    while node != nil {
      text += "\(node!.value)"
      node = node!.next
      if node != nil { text += ", " }
    }
    // 5
    return text + "]"
  }
}

//generic type으로 변환.
//public class Node<T> {
//  // 2
//  var value: T
//  var next: Node<T>?
//  weak var previous: Node<T>?
//
//  // 3
//  init(value: T) {
//    self.value = value
//  }
//}
//
//// 1. Change the declaration of the Node class to take a generic type T
//public class LinkedList<T> {
//  // 2. Change the head and tail variables to be constrained to type T
//  fileprivate var head: Node<T>?
//  private var tail: Node<T>?
//
//  public var isEmpty: Bool {
//    return head == nil
//  }
//
//  // 3. Change the return type to be a node constrained to type T
//  public var first: Node<T>? {
//    return head
//  }
//
//  // 4. Change the return type to be a node constrained to type T
//  public var last: Node<T>? {
//    return tail
//  }
//
//  // 5. Update the append function to take in a value of type T
//  public func append(value: T) {
//    let newNode = Node(value: value)
//    if let tailNode = tail {
//      newNode.previous = tailNode
//      tailNode.next = newNode
//    } else {
//      head = newNode
//    }
//    tail = newNode
//  }
//
//  // 6. Update the nodeAt function to return a node constrained to type T
//  public func nodeAt(index: Int) -> Node<T>? {
//    if index >= 0 {
//      var node = head
//      var i = index
//      while node != nil {
//        if i == 0 { return node }
//        i -= 1
//        node = node!.next
//      }
//    }
//    return nil
//  }
//
//  public func removeAll() {
//    head = nil
//    tail = nil
//  }
//
//  // 7. Update the parameter of the remove function to take a node of type T. Update the return value to type T.
//  public func remove(node: Node<T>) -> T {
//    let prev = node.previous
//    let next = node.next
//
//    if let prev = prev {
//      prev.next = next
//    } else {
//      head = next
//    }
//    next?.previous = prev
//
//    if next == nil {
//      tail = prev
//    }
//
//    node.previous = nil
//    node.next = nil
//
//    return node.value
//  }
//}
