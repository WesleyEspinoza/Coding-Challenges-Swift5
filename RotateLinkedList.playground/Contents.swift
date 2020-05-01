import UIKit

/*
 Rotate a given linked list counter-clockwise by k nodes, where k is a given integer.
 */

class Node<T>{
    var value: T?
    var next: Node<T>?
    
    init(value: T){
        self.value = value
    }
}

class LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    var first: Node<T>? {
        return head
    }
    
    func append(value: T) {
        let newNode = Node(value: value)
        if var h = head {
            while h.next != nil {
                h = h.next!
            }
            h.next = newNode
        } else {
            head = newNode
        }
        self.tail = newNode
    }
    
    func rotateCCW(k: Int){
        if isEmpty {
            return
        }
        for _ in 1...k{
            let tempVal: T? = self.head?.value
            var currentNode = self.head
            
            while currentNode?.next != nil {
                currentNode?.value = currentNode?.next?.value
                currentNode = currentNode?.next
            }
            currentNode?.value = tempVal
        }
    }
}



let ll = LinkedList<Int>()

ll.append(value: 1)
ll.append(value: 2)
ll.append(value: 3)
ll.append(value: 4)
ll.append(value: 5)
ll.append(value: 6)
ll.append(value: 7)
ll.append(value: 8)
ll.append(value: 9)
ll.append(value: 10)

func rotateLinkedList(ll: LinkedList<Int>, k: Int){
    ll.rotateCCW(k: k)
    print(ll.head?.value)
}

rotateLinkedList(ll: ll, k: 9)
