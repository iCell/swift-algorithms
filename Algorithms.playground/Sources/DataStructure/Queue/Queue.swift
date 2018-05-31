import Foundation

public struct Queue<V: Equatable> {
    var linkedList: SinglyLinkedList<V>

    public init() {
        linkedList = SinglyLinkedList<V>()
    }

    public var isEmpty: Bool {
        return linkedList.tail == nil
    }

    public func peek() -> V? {
        return linkedList.head?.value
    }

    public func enqueue(_ value: V) {
        linkedList.append(value)
    }

    public func dequeue() -> V? {
        let value = linkedList.head?.value
        linkedList.deleteHead()
        return value
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        return linkedList.description
    }
}
