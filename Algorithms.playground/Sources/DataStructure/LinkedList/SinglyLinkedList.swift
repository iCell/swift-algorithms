import Foundation

public class SinglyLinkedListNode<T: Equatable> {
    public let value: T
    public var next: SinglyLinkedListNode?

    public init(value: T, next: SinglyLinkedListNode? = nil) {
        self.value = value
        self.next = next
    }
}

public class SinglyLinkedList<T: Equatable> {
    public var head: SinglyLinkedListNode<T>?
    public var tail: SinglyLinkedListNode<T>?

    public init() {
        head = nil
        tail = nil
    }

    public func prepend(_ value: T) {
        if let head = head {
            let node = SinglyLinkedListNode(value: value, next: head)
            self.head = node
        } else {
            let node = SinglyLinkedListNode(value: value)
            self.head = node
            self.tail = node
        }
    }

    public func append(_ value: T) {
        let node = SinglyLinkedListNode(value: value)
        if let tail = tail {
            tail.next = node
            self.tail = node
        } else {
            self.head = node
            self.tail = node
        }
    }

    public func delete(_ value: T) {
        if head?.value == value {
            deleteHead()
        } else if tail?.value == value {
            deleteTail()
        } else {
            var node = head
            while let next = node?.next {
                if next.value == value {
                    node?.next = next.next
                    break
                }
                node = next
            }
        }
    }

    public func deleteTail() {
        if head?.next == nil {
            head = nil
            tail = nil
        } else {
            var node = head
            while let next = node?.next {
                if next.value == tail?.value {
                    node?.next = nil
                    tail = node
                    break
                }
                node = next
            }
        }
    }

    public func deleteHead() {
        if head == nil {
            return
        }
        let node = head?.next
        if node == nil {
            head = nil
            tail = nil
        } else {
            head = node
        }
    }
}

extension SinglyLinkedListNode: CustomStringConvertible {
    public var description: String {
        if let next = next {
            return "(value: \(value), next: \(next.value))"
        } else {
            return "(value: \(value))"
        }
    }
}

extension SinglyLinkedList: CustomStringConvertible {
    public var description: String {
        var result = head?.description
        var node = head
        while let next = node?.next {
            result?.append(next.description)
            node = next
        }
        return result ?? ""
    }
}
