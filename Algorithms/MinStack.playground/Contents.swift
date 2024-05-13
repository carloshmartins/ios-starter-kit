import UIKit
// Problem https://leetcode.com/problems/min-stack/description/

/*
 Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

 Implement the MinStack class:

 MinStack() initializes the stack object.
 void push(int val) pushes the element val onto the stack.
 void pop() removes the element on the top of the stack.
 int top() gets the top element of the stack.
 int getMin() retrieves the minimum element in the stack.
 You must implement a solution with O(1) time complexity for each function.
 
 */
class MinStack {
    var stack: [(element: Int, min: Int)] = []

    func push(_ x: Int) {
        
        if stack.count == 0 {
            stack.append((x, x))
        } else {
            let top = self.getMin()
            stack.append((x, x > top ? top : x))
        }
    }
    
    func pop() {
        stack.popLast()
    }
    
    func top() -> Int {
        stack.last?.element ?? -1
    }
    
    private func getMin() -> Int {
        stack.last?.min ?? -1
    }
}
