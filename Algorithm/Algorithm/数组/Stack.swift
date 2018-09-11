//
//  Stack.swift
//  Algorithm
//
//  Created by bfd on 2018/9/11.
//  Copyright © 2018年 GJ. All rights reserved.
//

import UIKit

//基于数组实现的栈结构
class Stack: NSObject {
    var stack: [Any]
    var isEmpty: Bool {return stack.isEmpty}
    var peek: Any? {return stack.last}
    
    override init() {
        stack = [Any]()
    }
    
    func push(object: Any) {
        stack.append(object)
    }
    
    func pop() -> Any {
        if !isEmpty {
            return stack.removeLast()
        } else {
            return NSNull()
        }
    }
    
}
