import Foundation

public struct Stack<V: Equatable> {
    var linkedList: SinglyLinkedList<V>

    public var isEmpty: Bool {
        return linkedList.tail == nil
    }

    public init() {
        linkedList = SinglyLinkedList<V>()
    }

    public func push(_ v: V) {
        linkedList.append(v)
    }

    public func pop() -> V? {
        let node = linkedList.tail?.value
        linkedList.deleteTail()
        return node
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        return linkedList.description
    }
}
