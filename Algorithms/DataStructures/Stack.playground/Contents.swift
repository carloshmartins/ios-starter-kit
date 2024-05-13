import UIKit

/*
 Stacks are used prominently in all disciplines of programming. To list a few:
 - iOS uses the navigation stack to push and pop view controllers into and out of view.
 - Memory allocation uses stacks at the architectural level. Memory for local variables is also managed using a stack.
 - Search and conquer algorithms, such as finding a path out of a maze, use stacks to facilitate backtracking.
 
 Complexity Analysis
 - Push -> O(1)
 - Pop -> O(1)
 - Peek -> O(1)
 
 LIFO -> Last-In First-Out
 */
struct Stack<Element> {
    private var storage: [Element] = []
    
    public init() {}
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    // We are using discardableResult, because we only want to pop the last element, without retrieving it
    @discardableResult
    public mutating func pop() -> Element? {
      storage.popLast()
    }
}

extension Stack: CustomDebugStringConvertible {
    var debugDescription: String {
        """
        ----top----
        \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
        -----------
        """
    }
}
