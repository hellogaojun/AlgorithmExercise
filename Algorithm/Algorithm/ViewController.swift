//
//  ViewController.swift
//  Algorithm
//
//  Created by bfd on 2018/9/11.
//  Copyright © 2018年 GJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       print(twoSum(nums: [1,2,3,4,5,6,7,8,9,10,15], 15))
        
        let s1 = "hello swift are you ok"
        print(reverseWords(s: s1) as Any)
        
    }

    fileprivate func _swap<T>(_ chars: inout [T],_ p: Int, _ q: Int) {
        (chars[p],chars[q]) = (chars[q],chars[p])
    }
    
    fileprivate func _reverse<T>(_ chars: inout [T], _ start: Int, _ end: Int) {
        var start = start,end = end
        while start < end {
            _swap(&chars, start, end)
            start += 1
            end -= 1
        }
    }
    
    ///给出一个字符串,要求将其按照单词顺序进行反转
    func reverseWords(s: String?) -> String? {
        guard let s = s else {
            return nil
        }
        
        var chars = Array(s.characters), start = 0
        _reverse(&chars, 0, chars.count - 1)
        
        for i in 0 ..< chars.count {
            if i == chars.count - 1 || chars[i + 1] == " " {
                _reverse(&chars, start, i)
                start = i + 2
            }
        }
        
        return String(chars)
    }
    
    /// 给出一个整型数组和一个目标值，判断数组中是否有两个数之和等于目标值
    ///
    /// - Parameters:
    ///   - nums: 数组
    ///   - target: 目标值
    /// - Returns: 是否存在对应的两个数
    func twoSum(nums: [Int],_ target: Int) -> Bool {
        var set = Set<Int>()
        for num in nums {
            if set.contains(target - num) {
                return true
            }
            set.insert(num)
        }
        
        return false
    }
    
    ///栈结构使用
    func stackUsage() {
        let stack = Stack()
        
        stack.push(object: 1)
        stack.push(object: 2)
        stack.push(object: 3)
        print(stack.peek!)
        print(stack.isEmpty)
        
        print(stack.pop())
        print(stack.pop())
        print(stack.pop())
        print(stack.pop())
        print(stack.isEmpty)
    }
    
    

}

