import Foundation

public class DoubleLinkedListNode<T: Equatable> {
    public let value: T
    public var last: DoubleLinkedListNode?
    public var next: DoubleLinkedListNode?

    public init(value: T, last: DoubleLinkedListNode? = nil, next: DoubleLinkedListNode? = nil) {
        self.value = value
        self.last = last
        self.next = next
    }
}

public class DoubleLinkedList<T: Equatable> {

    var head: DoubleLinkedListNode<T>?
    var tail: DoubleLinkedListNode<T>?

    public init() {
        self.head = nil
        self.tail = nil
    }

    public func prepend(_ value: T) {
        let node = DoubleLinkedListNode(value: value)
        if head == nil {
            head = node
            tail = node
        } else {
            head?.last = node
            node.next = head
            head = node
        }
    }

    public func append(_ value: T) {
        let node = DoubleLinkedListNode(value: value)
        if head == nil {
            head = node
            tail = node
        } else {
            node.last = tail
            tail?.next = node
            tail = node
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
                    next.next?.last = node
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
        node?.last = nil
        head = node
    }

    public func deleteTail() {
        if tail == nil {
            return
        }
        let node = tail?.last
        node?.next = nil
        tail = node
    }
}

extension DoubleLinkedListNode: CustomStringConvertible {
    public var description: String {
        let lastV = last == nil ? "" : ", l: \(last!.value)"
        let nextV = next == nil ? "" : ", n: \(next!.value)"
        return "(v: \(value)\(lastV)\(nextV))"
    }
}

extension DoubleLinkedList: CustomStringConvertible {
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
