import UIKit

/*
 Rotate a given linked list counter-clockwise by k nodes, where k is a given integer.
 
 What clarifying questions would you ask?
 
 what do i return if the linked list is emty?
 what do i return the same linked list or do i make a copy
 will the linked list always be valid?

 What reasonable assumptions could you state?
 ill assume that the linked list is singly linked

 What are 2-3 ways you can simplify the problem?
 create a node the indiviaul nodes were're working with
 make a class for the nodes making it easier to work with

 Brainstorm 2-3 ways to approach the problem.
 iterte through the nodes and re assign the values
 ????
 
 Choose one idea and write pseudocode for it.
check if the LL is empty if so return because we cant rotate an empty list
for loop for how ever many times we want to loop
 create a copy of the heads value
 create a tempNode
 while your tempNode.next is not nil
    tempNode.value becomes tempNode.next.value
    tempNode = tempNode.next
when we're done we make tempNode.value = copy of head value we made at the start
 
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
